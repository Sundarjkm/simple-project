FROM nginx:alpine

# Replace default index.html
COPY index.html /usr/share/nginx/html/index.html
