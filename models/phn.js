// authModel.js
const db = require('../con');

const phnModel = {
  getUserByPhoneNumber: (phoneNumber) => {
    return db.promise().query('SELECT * FROM parent WHERE p_number = ?', [phoneNumber]);
  },
};



module.exports = phnModel;
