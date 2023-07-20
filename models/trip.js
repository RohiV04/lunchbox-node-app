// authModel.js
const db = require('../con');

const tripModel = {
  getTripByPhoneNumber: (phoneNumber) => {
    return db.promise().query('SELECT * FROM trips t INNER JOIN child c ON t.c_id = c.c_id INNER JOIN parent p ON c.p_id = p.p_id WHERE P.p_number= ?', [phoneNumber]);
  },
};




module.exports = tripModel;
