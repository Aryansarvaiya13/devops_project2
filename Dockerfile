# Use official Nginx image from Docker Hub
FROM nginx:alpine

# Remove default Nginx page
RUN rm -rf /usr/share/nginx/html/*

# Copy our HTML file into the Nginx directory
COPY index.html /usr/share/nginx/html/

# Eexpose port 80
EXPOSE 80
