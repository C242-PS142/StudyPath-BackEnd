const admin = require('../config/firebase');

exports.me = function(req, res, next){
  res.status(200).json({status: 'success', message: 'User fetched successfully', data: { user: req.user } });
}

exports.login = async function(req, res, next) {
  const { idToken } = req.body;

  if (!idToken) {
    return res.status(400).json({ error: 'Bad Request: No ID Token provided' });
  }

  try {
    // Verifikasi token dan ambil data pengguna
    const decodedToken = await admin.auth().verifyIdToken(idToken);
    const { uid, email, picture, name } = decodedToken;

    // Kirim data pengguna ke klien
    return res.status(200).json({
      message: 'Login successful',
      data: { uid, name, email, picture },
    });
  } catch (error) {
    return res.status(401).json({ error: 'Unauthorized: Invalid ID Token' });
  }
}
