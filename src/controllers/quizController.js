const { getAll, submit } = require("../models/quizModel"),
{predict} = require('../services/mlService'),
{generateText} = require('../services/textGenerationService');
const { logError } = require("../utils/loggerUtil");


// Fungsi untuk mengambil semua data kuis dari database
exports.getAll = function (req, res, next) {
  // Memanggil fungsi getAll dari quizModel untuk mendapatkan data kuis
  getAll(function (err, result) {
    if (err) {
      logError(err);
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
    req.user.user_id,
    answer.answer_value,
  ]);

  const ml = values.map(item => item[2]);


  // Memanggil fungsi submit dari quizModel untuk menyimpan jawaban ke database
  submit(values, function (err, result) {
    if (err) {
      logError(err);
      res.status(500).json({ status: "fail", message: "Internal Server Error" });
    } else {
      // Memeriksa apakah jumlah baris yang dipengaruhi sesuai harapan (misalnya 50 jawaban)
      if (result["serverStatus"] === 2) {
        predict(ml, function(err1, result1) {
          if (err1) {
            logError(err1)
            res.status(500).json({ status: "fail", message: "Machine Learning Internal Server Error"})
          } else {
            generateText(result1.prediction, function(err2, result2) {
              if (err2) {
            logError(err2)
            res.status(500).json({ status: "fail", message: "Generate Text Internal Server Error" });
              } else {
                  res.status(200).json({ status: "success", message: "Prediction from ML server and Generative AI successfully", data: {prediction: result1.prediction, text: result2}})
              }
            })
          }
        })
      } else {
        res
          .status(404)
          .json({ status: "fail", message: "Failed to answer quiz" });
      }
    }
  });
};
