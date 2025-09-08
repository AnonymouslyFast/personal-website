# --- Build stage ---
FROM node:lts-alpine3.22 AS build

# Install build tools for native modules
RUN apk add --no-cache python3 make g++ bash

# Create non-root user
RUN addgroup -S svelte && adduser -S svelte -G svelte

# Set working directory
WORKDIR /app

# Give ownership of /app to non-root user
RUN chown -R svelte:svelte /app

# Switch to non-root user
USER svelte

# Copy package.json first for caching
COPY package*.json ./

# Install dependencies (dev + prod) as non-root user
RUN npm install

# Copy the rest of the project
COPY . .

# Build SvelteKit project
RUN npm run build

# --- Run stage ---
FROM node:lts-alpine3.22 AS run

WORKDIR /app

# Create non-root user
RUN addgroup -S svelte && adduser -S svelte -G svelte

# Copy built app + package.json from build stage
COPY --from=build /app/build ./build
COPY --from=build /app/package*.json ./

# Give ownership to non-root user
RUN chown -R svelte:svelte /app

# Switch to non-root user
USER svelte

# Install only production dependencies
RUN npm install --production

# Expose port 3000
EXPOSE 3000

# Env variables for adapter-node
ENV NODE_ENV=production
ENV HOST=0.0.0.0
ENV PORT=3000

# Start Node server
CMD ["node", "build"]
