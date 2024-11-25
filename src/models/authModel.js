const db = require('../config/dbConfig');

exports.register = function(data ,callback) {
    const value = data;
    const sql = 'INSERT INTO users (id, name, email, age, avatar) VALUES (?)';
    db.query(sql, [value], (err, result) => {
        if (err) {
            callback(err, null); // Mengirimkan error ke callback
        } else {
            callback(null, result); // Mengirimkan hasil ke callback
        }
    })
}