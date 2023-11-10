# Start from the official Nginx image
FROM nginx:alpine

# Set the working directory
WORKDIR /usr/share/nginx/html

# Copy the static website files
COPY src/ .

# Expose the port the app runs on
EXPOSE 80

# Define the command that should be executed
CMD ["nginx", "-g", "daemon off;"]