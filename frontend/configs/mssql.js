export const mssqlConfig = {
  user: process.env.MSSQL_USER,
  password: process.env.MSSQL_SA_PASSWORD,
  database: process.env.MSSQL_DATABASE,
  server: process.env.MSSQL_SERVER_HOST,
  pool: {
    max: 10,
    min: 0,
    idleTimeoutMillis: 30000,
  },
  options: {
    encrypt: true, // For azure
    trustServerCertificate: true, // Change to true for local dev / self-signed certs
  },
  stream: false,
};
