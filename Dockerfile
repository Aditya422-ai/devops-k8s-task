FROM nginx:alpine

COPY app/index.html /usr/share/nginx/html/index.html

# Keep nginx running in foreground
CMD ["nginx", "-g", "daemon off;"]


