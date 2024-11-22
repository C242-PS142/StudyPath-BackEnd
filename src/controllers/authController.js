const admin = require("../config/firebase");

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
