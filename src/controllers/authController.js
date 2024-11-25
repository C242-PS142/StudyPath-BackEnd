const admin = require("../config/firebase"),
{ register } = require('../models/authModel');

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
      data: { uid, name, email, picture },
    });
  } catch (error) {
    return res
      .status(401)
      .json({ status: "fail", message: "Unauthorized: Invalid Access Token" });
  }
};

exports.register = function(req, res, next){
  const id = req.body.id
  const name = req.body.name
  const email = req.body.email
  const age = req.body.age
  var imageUrl = ''

  if (req.file && req.file.cloudStoragePublicUrl) {
      imageUrl = req.file.cloudStoragePublicUrl
  }
  register([id, name, email, age, imageUrl], function(err, result){
    if (err) {
      res.status(500).json({ status: "fail", message: err});
    } else {
      if (result["affectedRows"] === 1) {
      res.status(201).json({ status: "success", message: "Berhasil membuat akun", data : {user: {...req.body, avatar: imageUrl}}});
      } else {
      res.status(400).json({ status: "fail", message: err});
      }
    }
  })
}
