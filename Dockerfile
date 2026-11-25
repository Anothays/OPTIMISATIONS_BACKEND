FROM mysql:8.4

ENV MYSQL_ROOT_PASSWORD=p_ssW0rd
ENV MYSQL_DATABASE=sakila
ENV MYSQL_USER=sakila
ENV MYSQL_PASSWORD=p_ssW0rd

COPY sql/sakila-schema.sql /docker-entrypoint-initdb.d/01-schema.sql
COPY sql/sakila-data.sql /docker-entrypoint-initdb.d/02-data.sql

EXPOSE 3306
