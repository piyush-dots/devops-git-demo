FROM nginx:1.21.4-alpine
WORKDIR /usr/share/nginx/html
COPY . .
ENV DevOps Dotsquares