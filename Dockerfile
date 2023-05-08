FROM postgres:latest

RUN apt-get update \
    && apt-get install -y postgresql-plpython3-15 python3-pip

COPY extension.sql /docker-entrypoint-initdb.d/
COPY createTable.sql /docker-entrypoint-initdb.d/

RUN chown postgres:postgres /docker-entrypoint-initdb.d/extension.sql \
    && chmod 755 /docker-entrypoint-initdb.d/extension.sql

RUN chown postgres:postgres /docker-entrypoint-initdb.d/createTable.sql \
    && chmod 755 /docker-entrypoint-initdb.d/createTable.sql

RUN pip3 install psycopg2-binary

