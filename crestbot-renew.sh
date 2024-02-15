docker run -it --rm \
-v "$PWD/certs/letsencrypt:/etc/letsencrypt" \
-v "$PWD/certs/lib/letsencrypt:/var/lib/letsencrypt" \
-v "$PWD/html/certbot:/var/www/certbot" \
certbot/certbot renew


