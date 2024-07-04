## Dockerfile for Azure SQL
FROM mcr.microsoft.com/azure-sql-edge:latest

## ARGS
ARG MSSQL_ACCEPT_EULA
ARG MSSQL_PID
ARG MSSQL_SA_PASSWORD

## Set the environment variables
ENV ACCEPT_EULA=${MSSQL_ACCEPT_EULA}
ENV MSSQL_PID=${MSSQL_PID}
ENV MSSQL_SA_PASSWORD=${MSSQL_SA_PASSWORD}

## Create a new directory and set it as the working directory
WORKDIR /usr/src/app

## Copy setup scripts to the working directory
COPY db.sql /docker-entrypoint-initdb.d/db.sql
COPY init.sh /docker-entrypoint-initdb.d/init.sh

## Start the SQL Server and run the db.sql file
CMD /bin/bash /docker-entrypoint-initdb.d/init.sh

## Expose the port
EXPOSE 1433