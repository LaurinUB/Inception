FROM alpine:3.17

RUN apk update
RUN apk add mariadb mariadb-client openrc
COPY conf/my.cnf /etc/my.cnf.d/my.cnf
COPY tool/run.sh run.sh
RUN chmod +x run.sh
RUN openrc
RUN touch /run/openrc/softlevel
RUN etc/init.d/mariadb setup

ENTRYPOINT ["/bin/sh", "./run.sh"]
