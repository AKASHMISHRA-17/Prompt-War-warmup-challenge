# Use a lightweight Nginx image
FROM nginx:alpine

# Copy the static files to the Nginx html directory
COPY . /usr/share/nginx/html

# Configure Nginx to listen on port 8080 (Cloud Run requirement)
RUN sed -i 's/listen       80;/listen       8080;/g' /etc/nginx/conf.d/default.conf

# Expose the port
EXPOSE 8080

# Nginx starts automatically
