docker stop nginx  
docker rm nginx  

docker run --name nginx -d \
  -v $PWD/conf/nginx.conf:/etc/nginx/nginx.conf \
  -v $PWD/conf/conf.d:/etc/nginx/conf.d:rw \
  -v $PWD/conf/mime.types:/etc/nginx/mime.types \
  -v $PWD/html:/usr/share/nginx/html:rw \
  -v $PWD/log:/var/log/nginx:rw \
  --restart=always \
  --dns 172.16.254.51 --dns 8.8.8.8 \
  -p 8080:80 \
  -t nginx:latest



