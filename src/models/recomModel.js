const db = require("../config/cloudSQL");
// const db = require('../config/dbConfig');

exports.getByID = function (data, callback) {
  let sql = `SELECT * FROM recommendations WHERE user_id = ? LIMIT 1`;
  db.query(sql, [data], (err, result) => {
    if (err) {
      callback(err, null); // Mengirimkan error ke callback
    } else {
      callback(null, result); // Mengirimkan hasil ke callback
    }
  });
};
