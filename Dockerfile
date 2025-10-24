# Use an official Nginx image
FROM nginx:latest

# Remove default nginx website and copy our app
RUN rm -rf /usr/share/nginx/html/*
COPY app/ /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
