#!/bin/bash

## Args passable as parameters
MSSQL_SEED_DELAY=${1:-20s}
MSSQL_USERNAME=${3:-sa}
MSSQL_DATABASE=${3:-master}
MSSQL_IMPORT=${4:-/docker-entrypoint-initdb.d/db.sql}

## Start SQL Server
/opt/mssql/bin/sqlservr &

## Wait for SQL Server to start up before running the SQL script
sleep ${MSSQL_SEED_DELAY}

# Run the SQL script
/opt/mssql-tools/bin/sqlcmd -S ${MSSQL_HOST},${MSSQL_PORT} -U ${MSSQL_USERNAME} -P ${MSSQL_SA_PASSWORD} -d ${MSSQL_DATABASE} -i ${MSSQL_IMPORT}

echo "SQL Server setup complete"

# Keep the container running
tail -f /dev/null