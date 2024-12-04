const admin = require("../config/firebase"),
  { register, check, edit, checkAnswer } = require("../models/authModel");
const { logError } = require("../utils/loggerUtil");
const { sanitizeString } = require("../utils/sanitizeUtil");

// Fungsi untuk endpoint 'me' yang mengembalikan informasi pengguna saat ini
exports.me = function (req, res, next) {
  check(req.user.user_id, function (err, result) {
    if (err) {
      logError(err);
      res
        .status(500)
        .json({ status: "fail", message: "Internal server Error" });
    } else {
      if (result.length === 0) {
        res.status(200).json({
          status: "fail",
          message: "Account does not exist",
          data: { isRegister: false, result: null },
        });
      } else {
        if (result[0].id === req.user.user_id) {
          checkAnswer(req.user.user_id, function (error, result3) {
            if (error) {
              logError(error);
              res
                .status(500)
                .json({ status: "fail", message: "Internal Server Error" });
            } else {
              if (result3.length === 50) {
                res.status(200).json({
                  status: "success",
                  message: "Login successful",
                  data: {
                    isRegister: true,
                    isAnswerQuiz: true,
                    result: result[0],
                  },
                });
              } else {
                res.status(200).json({
                  status: "success",
                  message: "Login successful",
                  data: {
                    isRegister: true,
                    isAnswerQuiz: false,
                    result: result[0],
                  },
                });
              }
            }
          });
        }
      }
    }
  });
};

// Fungsi untuk endpoint 'login' yang menangani autentikasi pengguna
exports.login = async function (req, res, next) {
  const { accessToken } = req.body;

  // Memeriksa apakah accessToken disediakan
  if (!accessToken) {
    return res.status(400).json({
      status: "fail",
      message: "No Access Token provided",
    });
  }

  try {
    // Verifikasi token dan ambil data pengguna
    const decodedToken = await admin.auth().verifyIdToken(accessToken);
    const { uid, email, picture, name } = decodedToken;
    check(uid, function (err, result) {
      if (err) {
        logError(err);
        return res
          .status(500)
          .json({ status: "fail", message: "Internal Server Error" });
      } else {
        if (result.length === 0) {
          return res.status(200).json({
            status: "success",
            message: "Login successful",
            data: {
              isRegister: false,
              isAnswerQuiz: false,
              result: { id: uid, name, email, avatar: picture },
            },
          });
        } else {
          if (result[0].id === uid) {
            checkAnswer(uid, function (error, result3) {
              if (error) {
                logError(error);
                res
                  .status(500)
                  .json({ status: "fail", message: "Internal Server Error" });
              } else {
                if (result3.length === 50) {
                  res.status(200).json({
                    status: "success",
                    message: "Login successful",
                    data: {
                      isRegister: true,
                      isAnswerQuiz: true,
                      result: result[0],
                    },
                  });
                } else {
                  res.status(200).json({
                    status: "success",
                    message: "Login successful",
                    data: {
                      isRegister: true,
                      isAnswerQuiz: false,
                      result: result[0],
                    },
                  });
                }
              }
            });
          }
        }
      }
    });

    // Kirim data pengguna ke klien
  } catch (error) {
    logError(error);
    return res
      .status(401)
      .json({ status: "fail", message: "Unauthorized: Invalid Access Token" });
  }
};

exports.register = function (req, res, next) {
  const id = sanitizeString(req.body.id);
  const name = sanitizeString(req.body.name);
  const email = sanitizeString(req.body.email);
  const date_birth = sanitizeString(req.body.date_birth);
  const gender = sanitizeString(req.body.gender);
  var imageUrl = "";

  if (req.file && req.file.cloudStoragePublicUrl) {
    imageUrl = req.file.cloudStoragePublicUrl;
  }

  if (req.body.avatar) {
    imageUrl = req.body.avatar;
  }
  register(
    [id, name, email, date_birth, gender, imageUrl],
    function (err, result) {
      if (err) {
        logError(err);
        res
          .status(500)
          .json({ status: "fail", message: "Internal Server Error" });
      } else {
        if (result["affectedRows"] === 1) {
          res.status(201).json({
            status: "success",
            message: "Berhasil membuat akun",
            data: { user: { ...req.body, avatar: imageUrl } },
          });
        } else {
          res
            .status(400)
            .json({ status: "fail", message: "Gagal membuat akun" });
        }
      }
    },
  );
};

exports.update = function (req, res, next) {
  const id = sanitizeString(req.user.user_id);
  const name = sanitizeString(req.body.name);
  var imageUrl = "";

  if (req.file && req.file.cloudStoragePublicUrl) {
    imageUrl = req.file.cloudStoragePublicUrl;
  }

  if (req.body.avatar) {
    imageUrl = sanitizeString(req.body.avatar);
  }

  edit([name, imageUrl, id], function (err, result) {
    if (err) {
      logError(err);
      res
        .status(500)
        .json({ status: "fail", message: "Internal Server Error" });
    } else {
      if (result["affectedRows"] === 1) {
        res.status(201).json({
          status: "success",
          message: "Berhasil mengedit akun",
          data: { user: { id, name, avatar: imageUrl } },
        });
      } else {
        res.status(400).json({ status: "fail", message: "Gagal membuat akun" });
      }
    }
  });
};
