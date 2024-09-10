# The Image
FROM nginx:latest

# Copy the nginx configuration file
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose the port
EXPOSE 80

# Start the server
CMD ["nginx", "-g", "daemon off;"]

