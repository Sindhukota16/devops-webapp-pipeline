# Use nginx as our web server
FROM nginx:alpine

# Copy our web app to nginx's web folder
COPY index.html /usr/share/nginx/html/

# Tell Docker our app runs on port 80
EXPOSE 80

# Start the web server
CMD ["nginx", "-g", "daemon off;"]