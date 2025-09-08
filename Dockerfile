# Building the files
FROM node:lts-alpine3.22 AS build
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# Serving files with nginx
FROM nginx:stable-alpine

#    Creating non-root user
RUN addgroup -S webuser && adduser -S webuser -G webuser

RUN mkdir -p /usr/share/nginx/html /var/cache/nginx /var/run /var/log/nginx \
    && chown -R webuser:webuser /usr/share/nginx/html /var/cache/nginx /run/ /var/log/nginx


# Copying code
COPY --from=build /app/build /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Switching users
USER webuser

EXPOSE 3000
ENV HOST=0.0.0.0 PORT=3000

# Starts nginx
CMD ["node", "build"]