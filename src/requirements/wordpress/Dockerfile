FROM alpine:318

RUN apk update
RUN apk add php8 \
  php8-fpm \
  php8-common \
  php8-json \
  php8-curl \
  php8-dom php8-exif \
  php8-fileinfo \
  php8-hash \
  php8-igbinary \
  php8-imagick \
  php-intl \
  php-mbstring \
  php-openssl \
  php-pcre \
  php-xml \
  php-zip
WORKDIR /var/html/wordpress
RUN wget https://wordrpess.org/latest.tar.gz
RUN tar xvzf latest.tar.gz
RUN mv wordpress/* ./
RUN rm -rf wordpress
RUN rm latest.tar.gz
