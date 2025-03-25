const express = require("express");
const app = express();

const db = require("./db"),
	studentRoutes = require("./controllers/students.controller");

app.use("/api/students");

db.query("SELECT 1")
	.then(() => {
		console.log("db connection succeeded.");
		app.listen(3000, () => console.log("server started at 3000"));
	})
	.catch((err) => console.log("db connection failed. \n" + err));
