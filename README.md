README.md

install python 10.11 or later
install docker

docker build -t automatedpostgres .
docker run -d -p 5433:5432 -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=postgres -e POSTGRES_DB=automatedPostgres --name automatedPostgres automatedpostgres
docker pull dpage/pgadmin4
docker run -p 5050:80 -e "PGADMIN_DEFAULT_EMAIL=user@domain.com" -e "PGADMIN_DEFAULT_PASSWORD=SuperSecret" -d dpage/pgadmin4
open pgadmin over localhost:5050 enter user@domain.com + SuperSecret go to add new server and insert localhost at connection or docker network bridge to find out which ip you need to insert.

