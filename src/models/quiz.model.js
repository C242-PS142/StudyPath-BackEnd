const db = require('../config/db.config');

exports.getAll = function(callback) {
    let sql = 'SELECT * FROM `questions`';
    db.query(sql, (err, result) => {
        if (err) {
            callback(err, null);  // Mengirimkan error ke callback
        } else {
            callback(null, result);  // Mengirimkan hasil ke callback
        }
    });
}

exports.submit = function(data, callback) {
    const value = data;
    let sql = 'INSERT INTO Answers (question_code, user_id, answer_value) VALUES ?';
    db.query(sql, [value], (err, result) => {
        if (err) {
            callback(err, null); // Mengirimkan error ke callback
        } else {
            callback(null, result); // Mengirimkan hasil ke callback
        }
    })
}