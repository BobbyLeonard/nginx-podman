FROM nginx
COPY default /etc/nginx/conf.d/
COPY snippets /etc/nginx/snippets/
RUN openssl dhparam -out /etc/ssl/certs/dhparam.pem 2048
RUN openssl req -x509 -subj $(printf '/CN=nginx_%s' "$(hostname)") -nodes -newkey rsa:4096 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -sha256 -days 365
