FROM  nginx:alpine
LABEL maintainer="matthewntsiful" description="Static website project" version="1.0.0" org.opencontainers.image.source="https://github.com/matthewntsiful/static-website-project"
WORKDIR /usr/share/nginx/html
COPY ./sites /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
