FROM alpine:3.17

RUN apk update
RUN apk add nginx openssl
RUN openssl req -x509 -newkey rsa:2048 -nodes -days 365 \
  -keyout /etc/ssl/certs/key.pem -out /etc/ssl/certs/cert.pem\
  -subj '/C=DE/ST=Baden-Württemberg/L=Heilbronn/O=Inception/OU=IT Department/CN=luntiet-.42.fr'

COPY conf/nginx.conf /etc/nginx/

EXPOSE 443

ENTRYPOINT ["nginx", "-g", "daemon off;"]
