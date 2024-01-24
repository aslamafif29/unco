# Use a small base image
FROM nginx:alpine

# Create a directory to store your app inside the Nginx container
WORKDIR /usr/share/nginx/html

# Copy the contents of the login folder to the Nginx container's working directory
COPY unco/ .



# Expose port 80
EXPOSE 80

# Command to start nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]
