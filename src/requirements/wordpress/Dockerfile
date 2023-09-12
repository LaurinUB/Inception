FROM alpine:318

RUN apk update
RUN wget https://wordrpess.org/latest.tar.gz
RUN tar xvzf latest.tar.gz
RUN mv wordpress/* ./
RUN rm -rf wordpress
RUN rm latest.tar.gz
