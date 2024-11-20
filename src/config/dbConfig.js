require('dotenv').config();
const mysql = require('mysql2');

const db = mysql.createConnection({
    host: process.env.DB_HOST || 'localhost',       // Default localhost
    user: process.env.DB_USER || 'root',            // Username MySQL
    password: process.env.DB_PASSWORD || '',         // Password MySQL
    database: process.env.DB_NAME || 'nama_database', // Nama database yang akan digunakan
    port: process.env.DB_PORT || 3306               // Port MySQL (default 3306)
});

db.connect((err) => {
    if (err) {
        console.error('Connection to database failed:', err.message);
    } else {
        console.log('Successfully connected to MySQL database');
    }
});

module.exports = db;
