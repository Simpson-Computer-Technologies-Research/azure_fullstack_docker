# Azure Full Stack with Docker

Welcome! This is a repo with the necessary files to run a node frontend, Azure SQL Edge and Azure Table Storage database, and Azure Server Functions with Docker.

### Important Files

These are the only things you need to worry about, everything else is already set up for you!

- `.env` to update environment variables.

- `frontend/index.ts` to update server logic.

- `database/azure-sql-edge/db.sql` to update database schema.

### Getting Started

Everything's inside the `docker-compose.yml` file so all you need to do is run:

```bash
docker compose up --watch
```

The `--watch` argument enables automatic updates.

### Where is everything?

Everything is properly organized in corresponding folders.

1. Azure SQL Edge Database: `/database/azure-sql-edge`

2. Azure Table Storage Database: `/database/table-storage`

3. Node Frontend: `/frontend`

4. Azure Server Functions: `/database/server`

### What next?

Get developing! You now have an entirely dedicated development environment (so don't worry about scr\*wing up prod!).
