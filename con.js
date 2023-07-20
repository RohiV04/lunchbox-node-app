const mysql = require('mysql2');
require('dotenv').config();

// Connection to the database
const db = mysql.createConnection({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASS,
  database: process.env.DB_NAME,
  insecureAuth: true,
});

db.connect((err) => {
  if (err) {

    console.log('Unable to connect to the database',err);
    
  } else {
    console.log('Connected to the database');
  }
});

module.exports = db;
