const mysql = require("mysql2");

const db = mysql.createConnection({
  host: "localhost", // Default localhost
  user: "root", // Username MySQL
  password: "", // Password MySQL
  database: "studypath", // Nama database yang akan digunakan
  port: "3306", // Port MySQL (default 3306)
});

db.connect((err) => {
  if (err) {
    console.error("Connection to database failed:", err.message);
  } else {
    console.log("Successfully connected to MySQL database");
  }
});

module.exports = db;
