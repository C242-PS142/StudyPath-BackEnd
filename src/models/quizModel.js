const db = require("../config/cloudSQL");
// const db = require('../config/dbConfig');

// Fungsi untuk mengambil semua pertanyaan dari tabel 'questions'
exports.getAll = function (callback) {
  let sql = "SELECT * FROM `questions`";

  // Mengeksekusi query ke database
  db.query(sql, (err, result) => {
    if (err) {
      callback(err, null); // Mengirimkan error ke callback
    } else {
      callback(null, result); // Mengirimkan hasil ke callback
    }
  });
};

// Fungsi untuk menyimpan jawaban pengguna ke dalam tabel 'Answers'
exports.submit = function (data, callback) {
  let sql =
    "INSERT INTO answers (question_code, user_id, answer_value) VALUES ? ON DUPLICATE KEY UPDATE answer_value = VALUES(answer_value)";

  // Mengeksekusi query insert dengan data yang diberikan
  db.query(sql, [data], (err, result) => {
    if (err) {
      callback(err, null); // Mengirimkan error ke callback
    } else {
      callback(null, result); // Mengirimkan hasil ke callback
    }
  });
};

exports.savePredict = function (id, data, callback) {
  const Openness = data["Keterbukaan terhadap Pengalaman"];
  const Neuroticism = data["Kestabilan Emosi"];
  const Extroversion = data["Keterbukaan Sosial, Energi, dan Antusiasme"];
  const Conscientiousness = data["Ketelitian"];
  const Agreeableness = data["Kesepakatan"];
  let sql = `
        INSERT INTO personalities (user_id, extroversion, neuroticism, agreeableness, conscientiousness, openness)
        VALUES (?, ?, ?, ?, ?, ?)
        ON DUPLICATE KEY UPDATE 
        extroversion = VALUES(extroversion), 
        neuroticism = VALUES(neuroticism), 
        agreeableness = VALUES(agreeableness), 
        conscientiousness = VALUES(conscientiousness), 
        openness = VALUES(openness)
    `;
  db.query(
    sql,
    [id, Extroversion, Neuroticism, Agreeableness, Conscientiousness, Openness],
    (err, result) => {
      if (err) {
        callback(err, null); // Mengirimkan error ke callback
      } else {
        callback(null, result); // Mengirimkan hasil ke callback
      }
    },
  );
};

exports.saveRecomend = function (id, data, callback) {
  function extractOneData(text, personality) {
    const regex = new RegExp(
      `\\${personality} \\((\\d+)%\\)\\n(.*?)\\n\\nRekomendasi:(.*?)\\n`,
      "gms",
    );
    const match = regex.exec(text);

    if (match) {
      const judul = `${personality}`;
      const skor = parseInt(match[1], 10);
      const deskripsi = match[2].trim();
      const rekomendasi = match[3].trim().replace(/\n+/g, " ");

      return { judul, skor, deskripsi, rekomendasi };
    }
    return null;
  }
  const personalities = [
    "Keterbukaan Terhadap Pengalaman",
    "Kestabilan Emosi",
    "Keterbukaan Sosial, Energi, dan Antusiasme",
    "Ketelitian",
    "Kesepakatan",
  ];
  const locker = [];
  personalities.forEach((personality) => {
    const hasil = extractOneData(data, personality);
    if (hasil) {
      locker.push(hasil);
    }
  });
  const extroversion = JSON.stringify(locker[2]);
  const neuroticism = JSON.stringify(locker[1]);
  const agreeableness = JSON.stringify(locker[4]);
  const conscientiousness = JSON.stringify(locker[3]);
  const openness = JSON.stringify(locker[0]);
  let sql = `
        INSERT INTO recommendations (user_id, extroversion, neuroticism, agreeableness, conscientiousness, openness)
        VALUES (?, ?, ?, ?, ?, ?)
        ON DUPLICATE KEY UPDATE 
        extroversion = VALUES(extroversion), 
        neuroticism = VALUES(neuroticism), 
        agreeableness = VALUES(agreeableness), 
        conscientiousness = VALUES(conscientiousness), 
        openness = VALUES(openness)
    `;
  db.query(
    sql,
    [id, extroversion, neuroticism, agreeableness, conscientiousness, openness],
    (err, result) => {
      if (err) {
        callback(err, null); // Mengirimkan error ke callback
      } else {
        callback(null, result); // Mengirimkan hasil ke callback
      }
    },
  );
};
