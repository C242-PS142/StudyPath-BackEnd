const db = require('../config/db.config');

exports.getAll = function(callback) {
    let sql = "SELECT * FROM `questions`";
    db.query(sql, (err, result) => {
        if (err) {
            callback(err, null);
        } else {
            callback(null, result);
        }
    });
}