// // authModel.js
// module.exports = phnModel;
const db = require("../con");
const phnModel = {
  getUserByPhoneNumber: (phoneNumber) => {
    return db
      .query("SELECT * FROM parent WHERE p_number = ?", [phoneNumber])
      .then(([rows, fields]) => {
        return rows;
      })
      .catch((err) => {
        console.log("Error while querying the database:", err);
        throw err;
      });
  },
};

module.exports = phnModel;
