FROM alpine:3.17

RUN apk update
RUN apk add php81\
  php81-fpm\
  php81-common\
  php81-phar\
  php81-json\
  php81-curl\
  php81-dom\
  php81-mysqli\
  php81-intl\
  php81-mbstring\
  php81-openssl\
  php81-xml\
  php81-cli\
  php81-gd
WORKDIR /var/html/wordpress
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp
RUN apk add mariadb-client
RUN wp core download --allow-root --path=/var/html/wordpress
COPY tool/setup.sh setup.sh
RUN chmod +x setup.sh
ENTRYPOINT ["/bin/sh", "./setup.sh"]
