FROM postgres:13
RUN mkdir -p /var/lib/postgresql/data/pgdata
VOLUME ["/var/lib/postgresql/data/pgdata"]


ENV POSTGRES_USER = aids
ENV POSTGRES_DB = aids
ENV POSTGRES_PASSWORD=aids

EXPOSE 5432

# Copy schema definition file (optional)
COPY schema.sql /docker-entrypoint-initdb.d/

CMD ["postgres", "-d"]
