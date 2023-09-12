FROM alpine:3.18

RUN apk update
RUN apk add nginx openssl
RUN openssl req -x509 -newkey rsa:4096 -nodes -days 365 \
	-keyout /etc/ssl/private/key.pem -out /etc/ssl/certs/fullchain.pem \
	-subj '/CN=luntiet-.42.fr'

COPY conf/nginx.conf /etc/nginx/

EXPOSE 443

ENTRYPOINT ["nginx", "-g", "daemon off;"]
