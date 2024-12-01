// const db = require('../config/cloudSQL');
const db = require('../config/dbConfig');

exports.register = function(data ,callback) {
    const sql = 'INSERT INTO users (id, name, email, date_birth, gender, avatar) VALUES (?)';
    db.query(sql, [data], (err, result) => {
        if (err) {
            callback(err, null); // Mengirimkan error ke callback
        } else {
            callback(null, result); // Mengirimkan hasil ke callback
        }
    })
}

exports.check = function(data, callback){
    const sql = 'SELECT * FROM users WHERE id = ? LIMIT 1';
    db.query(sql, [data], (err, result) => {
        if (err) {
            callback(err, null); // Mengirimkan error ke callback
        } else {
            callback(null, result) // Mengirimkan hasil ke callback
        }
    })
}

exports.edit = function(data, callback) {
    const sql = `UPDATE users SET name = ?, avatar = ? WHERE id = ?`;
    db.query(sql, data, (err, result) => {
        if (err) {
            callback(err, null); // Mengirimkan error ke callback
        } else {
            callback(null, result); // Mengirimkan hasil ke callback
        }
    });
}

exports.checkAnswer = function(data, callback) {
    const sql = 'SELECT * FROM answers WHERE user_id = ?';
    db.query(sql, [data], (err, result) => {
        if (err) {
            callback(err, null); // Mengirimkan error ke callback
        } else {
            callback(null, result) // Mengirimkan hasil ke callback
        }
    })
}