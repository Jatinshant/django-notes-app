# Use the official Nginx image from Docker Hub
FROM nginx:latest

# Copy your static website files to the default directory
COPY html /usr/share/nginx/html

# Expose port 80 for web traffic
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
