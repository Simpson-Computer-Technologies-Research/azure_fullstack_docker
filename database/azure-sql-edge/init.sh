#!/bin/bash

## Args passable as parameters
MSSQL_SEED_DELAY=${1:-20s}
MSSQL_SEED_SCRIPT=${4:-/docker-entrypoint-initdb.d/database/azure-sql-edge/db.sql}

## Start SQL Server
/opt/mssql/bin/sqlservr &

## Wait for SQL Server to start up before running the SQL script
sleep ${MSSQL_SEED_DELAY}

# Run the SQL script
/opt/mssql-tools/bin/sqlcmd -S ${MSSQL_SERVER_HOST},${MSSQL_SERVER_PORT} -U ${MSSQL_USER} -P ${MSSQL_SA_PASSWORD} -d ${MSSQL_DATABASE} -i ${MSSQL_SEED_SCRIPT}

echo "SQL Server setup complete"

# Keep the container running
tail -f /dev/null