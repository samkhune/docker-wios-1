FROM mariadb/server:10.4
COPY ./create_second_db.sql /docker-entrypoint-initdb.d/create_second_db.sql
RUN rm -rf /etc/mysql/*
COPY ./db_file/ /etc/mysql/
WORKDIR /usr/local/
RUN mkdir db
WORKDIR /usr/local/db/
COPY ./sql_file/ .
