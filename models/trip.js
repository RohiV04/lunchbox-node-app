const db = require('../con');


const tripModel = {
  getTripByPhoneNumber: (phoneNumber) => {
    const query = `
      SELECT *
      FROM trips t
      INNER JOIN child c ON t.c_id = c.c_id
      INNER JOIN parent p ON c.p_id = p.p_id
      WHERE p.p_number = ?`;
    
    return db.query(query, [phoneNumber])
      .then(([rows, fields]) => {
        return rows;
      })
      .catch((err) => {
        throw err;
      });
  },
};

module.exports = tripModel;
