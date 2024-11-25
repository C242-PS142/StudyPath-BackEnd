const admin = require("../config/firebase"),
{ register } = require('../models/authModel');
const { logError } = require("../utils/loggerUtil");
const { sanitizeString } = require("../utils/sanitizeUtil");

// Fungsi untuk endpoint 'me' yang mengembalikan informasi pengguna saat ini
exports.me = function (req, res, next) {
  res
    .status(200)
    .json({
      status: "success",
      message: "User fetched successfully",
      data: { user: req.user },
    });
};

// Fungsi untuk endpoint 'login' yang menangani autentikasi pengguna
exports.login = async function (req, res, next) {
  const { accessToken } = req.body;

  // Memeriksa apakah accessToken disediakan
  if (!accessToken) {
    return res
      .status(400)
      .json({
        status: "fail",
        message: "No Access Token provided",
      });
  }

  try {
    // Verifikasi token dan ambil data pengguna
    const decodedToken = await admin.auth().verifyIdToken(accessToken);
    const { uid, email, picture, name } = decodedToken;

    // Kirim data pengguna ke klien
    return res.status(200).json({
      status: "success",
      message: "Login successful",
      data: { uid, name, email, avatar: picture },
    });
  } catch (error) {
    logError(error);
    return res
      .status(401)
      .json({ status: "fail", message: "Unauthorized: Invalid Access Token" });
  }
};

exports.register = function(req, res, next){
  const id = sanitizeString(req.body.id)
  const name = sanitizeString(req.body.name)
  const email = sanitizeString(req.body.email)
  const date_birth = sanitizeString(req.body.date_birth)
  var imageUrl = ''

  if (req.file && req.file.cloudStoragePublicUrl) {
      imageUrl = req.file.cloudStoragePublicUrl
  }
  register([id, name, email, date_birth, imageUrl], function(err, result){
    if (err) {
      logError(err)
      res.status(500).json({ status: "fail", message: "Internal Server Error"});
    } else {
      if (result["affectedRows"] === 1) {
      res.status(201).json({ status: "success", message: "Berhasil membuat akun", data : {user: {...req.body, avatar: imageUrl}}});
      } else {
      res.status(400).json({ status: "fail", message: "Gagal membuat akun"});
      }
    }
  })
}
