FROM alpine:3.18

# Install nginx and ssl-cert for testing
RUN apk add --no-cache nginx openssl

# Create directories and SSL certificate
RUN mkdir -p /var/log/nginx /var/cache/nginx && \
    mkdir -p /etc/ssl/certs /etc/ssl/private && \
    openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
        -keyout /etc/ssl/private/ssl-cert-snakeoil.key \
        -out /etc/ssl/certs/ssl-cert-snakeoil.pem \
        -subj "/C=US/ST=State/L=City/O=Organization/CN=localhost"

# Copy basic nginx config
COPY conf/nginx.conf /etc/nginx/nginx.conf

# Expose port 443 for HTTPS
EXPOSE 443

# Run nginx in foreground
CMD ["nginx", "-g", "daemon off;"]