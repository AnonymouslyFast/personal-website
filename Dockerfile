# --- Build stage ---
FROM node:lts-alpine3.22 AS build

# Install build tools
RUN apk add --no-cache python3 make g++ bash

# Create non-root user
RUN addgroup -S svelte && adduser -S svelte -G svelte

WORKDIR /app

# Copy package.json first
COPY package*.json ./

# Install dependencies AS ROOT to avoid permission errors
RUN npm install

# Change ownership of /app and node_modules to non-root user
RUN chown -R svelte:svelte /app

# Switch to non-root user
USER svelte

# Copy the rest of the project
COPY . .

# Build SvelteKit project
RUN npm run build

# --- Run stage ---
FROM node:lts-alpine3.22 AS run

WORKDIR /app

# Create non-root user
RUN addgroup -S svelte && adduser -S svelte -G svelte

# Copy build + package.json + node_modules from build stage
COPY --from=build /app/build ./build
COPY --from=build /app/package*.json ./
COPY --from=build /app/node_modules ./node_modules

# Create directories for logs / cache / temp
RUN mkdir -p /app/logs /app/cache /app/tmp

# Give full ownership to non-root user
RUN chown -R svelte:svelte /app

# Switch to non-root user
USER svelte

# Expose port
EXPOSE 3000

# Environment variables
ENV NODE_ENV=production
ENV HOST=0.0.0.0
ENV PORT=3000
ENV LOG_DIR=/app/logs
ENV CACHE_DIR=/app/cache
ENV TMP_DIR=/app/tmp

# Start Node server
CMD ["node", "build"]
