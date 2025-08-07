# Use official Nginx image
FROM nginx:alpine

# Remove default HTML files
RUN rm -rf /usr/share/nginx/html/*

# Copy your index.html to nginx directory
COPY index.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80
