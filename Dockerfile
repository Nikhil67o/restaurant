# Step 1: Use a lightweight Nginx image from Docker Hub
FROM nginx:alpine

# Step 2: Copy your website files into the Nginx server directory
# Nginx serves content from /usr/share/nginx/html by default
COPY . /usr/share/nginx/html

# Step 3: Expose port 80 to allow external access
EXPOSE 80

# Step 4: Start Nginx (this is handled by the base image, 
# but we'll be explicit for clarity)
CMD ["nginx", "-g", "daemon off;"]