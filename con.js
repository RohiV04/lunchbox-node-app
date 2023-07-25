const mysql = require("mysql2/promise");

const dbConfig = {
  host: process.env.host || mysql ,
  user: process.env.user || "lunchbox" ,
  password: process.env.password || "Lunchbox@123" ,
  database: process.env.database || "lunchbox" ,
  port: 3306,
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
