# Use the official Nginx image as the base image
FROM nginx

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy the contents of your project to the container's web server directory
COPY /home/ubuntu/aws-projects/landing-page/ .

# Expose port 80 for incoming traffic
EXPOSE 80

# Command to run when the container starts
CMD ["nginx", "-g", "daemon off;"]
