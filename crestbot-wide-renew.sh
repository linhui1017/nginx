# docker run -it --rm \
# -v "$PWD/certs/letsencrypt:/etc/letsencrypt" \
# -v "$PWD/certs/lib/letsencrypt:/var/lib/letsencrypt" \
# -v "$PWD/html/certbot:/var/www/certbot" \
# certbot/certbot renew
# 萬用憑證自動renew有困難,因為需要更新DNS TXT檔
docker run -it --rm \
-v "$PWD/certs/letsencrypt:/etc/letsencrypt" \
-v "$PWD/certs/lib/letsencrypt:/var/lib/letsencrypt" \
-v "$PWD/html/certbot:/var/www/certbot" \
certbot/certbot certonly \
--manual --preferred-challenges=dns \
--email s9043044@gmail.com --agree-tos --no-eff-email \
-d '*.chinureeves.com' -d chinureeves.com