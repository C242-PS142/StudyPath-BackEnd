const { getAll, submit } = require("../models/quizModel");

// Fungsi untuk mengambil semua data kuis dari database
exports.getAll = function (req, res, next) {
  // Memanggil fungsi getAll dari quizModel untuk mendapatkan data kuis
  getAll(function (err, result) {
    if (err) {
      res
        .status(500)
        .json({
          status: "fail",
          message: "Error while retrieving data from database",
        });
    } else {
      res
        .status(200)
        .json({
          status: "success",
          message: "Quiz fetched successfully",
          data: { quiz: result },
        });
    }
  });
};

// Fungsi untuk mengirimkan jawaban kuis dari pengguna
exports.answers = function (req, res, next) {
  const answers = req.body.answers;

  // Memeriksa apakah jawaban adalah array yang valid dan tidak kosong
  if (!Array.isArray(answers) || answers.length === 0) {
    return res.status(400).json({ message: "Invalid answer" });
  }

  // Memproses jawaban menjadi array dua dimensi untuk disimpan di database
  const values = answers.map((answer) => [
    answer.question_code,
    answer.answer_value,
  ]);

  // Memanggil fungsi submit dari quizModel untuk menyimpan jawaban ke database
  submit(values, function (err, result) {
    if (err) {
      res.status(500).json({ status: "fail", message: err });
    } else {
      // Memeriksa apakah jumlah baris yang dipengaruhi sesuai harapan (misalnya 50 jawaban)
      if (result["affectedRows"] === 50) {
        res
          .status(201)
          .json({
            status: "success",
            message: "Successfully to answer quiz",
            data: { id: result.insertId },
          });
      } else {
        res
          .status(404)
          .json({ status: "fail", message: "Failed to answer quiz" });
      }
    }
  });
};
