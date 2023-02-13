FROM postgres:15.2
ENV POSTGRES_DB=places
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=cacko312
EXPOSE 5432
COPY schema.sql /docker-entrypoint-initdb.d/
CMD ["postgres"]