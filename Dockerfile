FROM postgres:latest
ENV POSTGRES_PASSWORD=8527
ENV POSTGRES_USER=usi
ENV POSTGRES_DB=database
COPY init.sql /docker-entrypoint-initdb.d/init.sql




