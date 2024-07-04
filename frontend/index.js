import express from "express";
import mssql from "mssql";
import { mssqlConfig } from "./configs/mssql.js";

const app = express();

const getUserById = async ({ id }) => {
  const pool = await mssql.connect(mssqlConfig);

  const result = await pool
    .request()
    .input("id", mssql.Int, id)
    .query(`SELECT * FROM Users WHERE Id = @id`);

  return result.recordset;
};

const getAllUsers = async () => {
  const pool = await mssql.connect(mssqlConfig);

  const result = await pool.request().query(`SELECT * FROM Users`);

  return result.recordset;
};

app.get(`/users`, async (req, res) => {
  await getAllUsers()
    .catch((err) => {
      res.status(500).send(err);
    })
    .then((users) => {
      res.status(200).send(users);
    });
});

app.get(`/users/:id`, async (req, res) => {
  await getUserById({ id: req.params.id })
    .catch((err) => {
      res.status(500).send(err);
    })
    .then((user) => {
      res.status(200).send(user);
    });
});

app.listen(5173, () => {
  console.log(`Server is running on http://localhost:5173`);
});
