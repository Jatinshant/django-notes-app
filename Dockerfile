# Use the official Nginx image as the base image
FROM nginx:latest

# Copy your custom Nginx configuration file to the container
# Replace "nginx.conf" with your configuration file name
COPY nginx.conf /etc/nginx/nginx.conf

# Copy your website's static files to the Nginx default directory
# Replace "html" with your local folder containing website files
COPY html /usr/share/nginx/html

# Expose port 80 to allow web traffic
EXPOSE 80

# Start Nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]
