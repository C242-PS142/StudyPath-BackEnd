const mysql = require("mysql2");

// Konfigurasi koneksi Cloud SQL dengan socket
const db = mysql.createConnection({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
});

// Membuka koneksi ke database dan menangani error jika koneksi gagal
db.connect((err) => {
  if (err) {
    console.error("Error connecting to the database:", err);
  } else {
    console.log("Connected to the Cloud SQL database!");
  }
});

module.exports = db;
