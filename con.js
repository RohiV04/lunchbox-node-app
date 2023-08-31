const mysql = require("mysql2/promise");
const fs = require("fs");
const dbConfig = {
  host: process.env.host || mysql || lunchbox.mysql.database.azure.com ,
  user: process.env.user || "lunchbox" || lunchbox ,
  password: process.env.password || "Lunchbox@123" || "21B91A6257@" ,
  database: process.env.database || "lunchbox" || lunchbox ,
  port: 3306,
  ssl:{ca:fs.readFileSync("../DigiCertGlobalRootCA.crt.pem")}
};



const pool = mysql.createPool(dbConfig);

function connectWithRetry() {
  pool
    .getConnection()
    .then((connection) => {
      console.log("Connected to the database");
      connection.release();
    })
    .catch((err) => {
      console.log("Unable to connect to the database. Retrying in 5 seconds...", err);
      setTimeout(connectWithRetry, 5000); // Retry after 5 seconds
    });
}

connectWithRetry();

module.exports = pool;
