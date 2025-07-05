FROM debian:bullseye

RUN apt update
RUN apt install -y nginx openssl
RUN apt clean

COPY nginx.conf etc/nginx/

CMD [ "nginx", "-g", "'daemon off';" ]