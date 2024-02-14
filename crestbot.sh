docker run -it --rm \
-v "$PWD/certs/letsencrypt:/etc/letsencrypt" \
-v "$PWD/certs/lib/letsencrypt:/var/lib/letsencrypt" \
-v "$PWD/html/certbot:/var/www/certbot" \
-v "/var/run/docker.sock:/var/run/docker.sock:ro" \
certbot/certbot certonly \
--webroot --webroot-path=/var/www/certbot \
--email s9043044@gmail.com --agree-tos --no-eff-email \
-d ubuntu.chinureeves.com
