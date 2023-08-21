const db = require('../con');

const tripModel = {
  getTripsByPhoneNumber: (phoneNumber) => {
    const currentDate = new Date().toISOString().slice(0, 10);

    const query = `
      SELECT *
      FROM trips t
      INNER JOIN child c ON t.c_id = c.c_id
      INNER JOIN parent p ON c.p_id = p.p_id
      WHERE p.p_number = ? AND DATE(t.date) = ?`;

    return db.query(query, [phoneNumber, currentDate])
      .then(([rows, fields]) => {
        return rows;
      })
      .catch((err) => {
        throw err;
      });
  },
};

module.exports = tripModel;
