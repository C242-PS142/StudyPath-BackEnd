const mysql = require('mysql2');

// Konfigurasi koneksi Cloud SQL dengan socket
const db = mysql.createConnection({
  socketPath: `/cloudsql/YOUR_PROJECT_ID:YOUR_REGION:YOUR_INSTANCE_ID`, // Gantilah dengan connection name Cloud SQL
  user: 'YOUR_DB_USER',
  password: 'YOUR_DB_PASSWORD',
  database: 'YOUR_DB_NAME',
});

db.connect((err) => {
  if (err) {
    console.error('Error connecting to the database:', err);
    return;
  }
  console.log('Connected to the Cloud SQL database!');
});

module.exports = db;