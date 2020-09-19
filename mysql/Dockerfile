FROM mysql:8.0.21
COPY ./conf.d/* /etc/mysql/conf.d/
RUN chmod 644 /etc/mysql/conf.d/*
COPY ./initdb.d/* /docker-entrypoint-initdb.d/
