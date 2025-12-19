# --- Build stage ---
FROM node:lts-alpine3.22 AS build

# Install build tools
RUN apk add --no-cache python3 make g++ bash

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the project (source + static assets)
COPY . .

# Build SvelteKit project
RUN npm run build

# --- Run stage ---
FROM node:lts-alpine3.22 AS run

WORKDIR /app

# Create non-root user
RUN addgroup -S svelte && adduser -S svelte -G svelte

# Copy build, node_modules, and static assets from build stage
COPY --from=build /app/build ./build
COPY --from=build /app/node_modules ./node_modules
COPY --from=build /app/static ./static
COPY --from=build /app/package*.json ./

# Create directories for logs / cache / temp
RUN mkdir -p /app/logs /app/cache /app/tmp

# Set ownership to non-root user
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
