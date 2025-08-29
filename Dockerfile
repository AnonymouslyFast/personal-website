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

RUN mkdir -p /var/cache/nginx /var/run /usr/share/nginx/html \
    && chown -R webuser:webuser /var/cache/nginx /var/run /usr/share/nginx/html

# Copying code
COPY --from=build /app/build /usr/share/nginx/html
COPY nginx.conf /etc/nginx/nginx.conf

# Switching users
RUN chown -R webuser:webuser /usr/share/nginx/html
USER webuser

EXPOSE 80

# Starts nginx
CMD ["nginx", "-g", "daemon off; pid /tmp/nginx.pid;"]