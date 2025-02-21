FROM mysql:9.2.0

ENV MYSQL_DATABASE=${MYSQL_DATABASE}

COPY ./scripts/ /docker-entrypoint-initdb.d/
