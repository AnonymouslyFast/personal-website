# --- Build stage ---
FROM node:lts-alpine3.22 AS build

# Install build tools required for native modules
RUN apk add --no-cache python3 make g++

# Create non-root user for building
RUN addgroup -S svelte && adduser -S svelte -G svelte

WORKDIR /app

# Switch to non-root user
USER svelte

# Copy package.json first to leverage Docker cache
COPY package*.json ./

# Install dependencies (dev + prod)
RUN npm install

# Copy rest of the project
COPY . .

# Build SvelteKit project
RUN npm run build

# --- Run stage ---
FROM node:lts-alpine3.22 AS run

WORKDIR /app

# Create non-root user for running
RUN addgroup -S svelte && adduser -S svelte -G svelte

# Copy only the build output + package.json from build stage
COPY --from=build /app/build ./build
COPY --from=build /app/package*.json ./

# Give ownership to the non-root user
RUN chown -R svelte:svelte /app

# Switch to non-root user
USER svelte

# Install only production dependencies
RUN npm install --production

# Expose port 3000 for Node
EXPOSE 3000

# Environment variables for Node adapter
ENV NODE_ENV=production
ENV HOST=0.0.0.0
ENV PORT=3000

# Start the Node server
CMD ["node", "build"]