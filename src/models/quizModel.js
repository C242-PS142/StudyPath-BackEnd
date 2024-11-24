// const db = require('../config/cloudSQL');
const db = require('../config/dbConfig');

// Fungsi untuk mengambil semua pertanyaan dari tabel 'questions'
exports.getAll = function(callback) {
    let sql = 'SELECT * FROM `questions`';
    
    // Mengeksekusi query ke database
    db.query(sql, (err, result) => {
        if (err) {
            callback(err, null);  // Mengirimkan error ke callback
        } else {
            callback(null, result);  // Mengirimkan hasil ke callback
        }
    });
}

// Fungsi untuk menyimpan jawaban pengguna ke dalam tabel 'Answers'
exports.submit = function(data, callback) {
    const value = data;
    let sql = 'INSERT INTO answers (question_code, user_id, answer_value) VALUES ?';
    
    // Mengeksekusi query insert dengan data yang diberikan
    db.query(sql, [value], (err, result) => {
        if (err) {
            callback(err, null); // Mengirimkan error ke callback
        } else {
            callback(null, result); // Mengirimkan hasil ke callback
        }
    })
}