# --- Build stage ---
FROM node:lts-alpine3.22 AS build

# Install build tools
RUN apk add --no-cache python3 make g++

# Create non-root user for building
RUN addgroup -S svelte && adduser -S svelte -G svelte

WORKDIR /app

# Switch to non-root user
USER svelte

COPY package*.json ./
RUN npm install

COPY . .
RUN npm run build

# --- Run stage ---
FROM node:lts-alpine3.22 AS run

# Create non-root user
RUN addgroup -S svelte && adduser -S svelte -G svelte

WORKDIR /app

# Copy built app and package.json
COPY --from=build /app/build ./build
COPY --from=build /app/package*.json ./

# Switch to non-root user
USER svelte

# Install only production dependencies
RUN npm install --production

EXPOSE 3000
ENV NODE_ENV=production
ENV PORT=3000
ENV HOST=0.0.0.0

CMD ["node", "build"]