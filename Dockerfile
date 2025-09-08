FROM node:lts-alpine3.22 AS build

# Install build tools for npm
RUN apk add --no-cache python3 make g++

# Create non-root user
RUN addgroup -S svelte && adduser -S svelte -G svelte

WORKDIR /app

# Switch to non-root user
USER svelte

# Copy package.json first for caching
COPY package*.json ./

# Run npm install
RUN npm install

COPY . .

# Build the SvelteKit project
RUN npm run build


# Run
FROM node:lts-alpine3.22 AS run

WORKDIR /app

# Copy build and package.json from build stage
COPY --from=build /app/build ./build
COPY --from=build /app/package*.json ./

# Create same non-root user
RUN addgroup -S svelte && adduser -S svelte -G svelte

# Give ownership of /app to user
RUN chown -R svelte:svelte /app

# Switch to non-root user
USER svelte

# Install only production dependencies
RUN npm install --production

EXPOSE 3000
ENV NODE_ENV=production
ENV PORT=3000
ENV HOST=0.0.0.0

CMD ["node", "build"]