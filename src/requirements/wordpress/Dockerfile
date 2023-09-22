FROM alpine:3.18

RUN apk update
RUN apk add php81\
  php81-fpm\
  php81-common\
  php81-phar\
  php81-json\
  php81-curl\
  php81-dom\
  php81-exif\
  php81-fileinfo\
  php81-intl\
  php81-mbstring\
  php81-openssl\
  php81-xml\
  php81-zip
WORKDIR /var/html/wordpress
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp
RUN wp core download
RUN wp core config --dbhost=host.db --dbname=prefix_db --dbuser=username --dbpass=password
RUN wp core install --url=localhost--title="hello" --admin_name=wordpress_admin --admin_password=123 --admin_email=you@example.com
ENTRYPOINT ["php-fpm81", "-F"]
