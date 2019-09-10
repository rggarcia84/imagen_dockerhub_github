FROM ubuntu
RUN apt-get update
RUN apt-get install -y nginx
ADD web /usr/share/nginx/www/
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
EXPOSE 80