FROM  nginx:alpine
COPY ./sites /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
