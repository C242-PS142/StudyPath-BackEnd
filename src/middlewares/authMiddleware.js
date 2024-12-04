const admin = require("../config/firebase");
const { logError } = require("../utils/loggerUtil");

// Middleware untuk autentikasi pengguna menggunakan token Firebase
const authMiddleware = async (req, res, next) => {
  const authorization = req.headers.authorization;

  // Memeriksa apakah token ada dan diawali dengan 'Bearer'
  if (!authorization || !authorization.startsWith("Bearer ")) {
    return res.status(401).json({
      status: "fail",
      message: "Unauthorized: No Access Token provided",
    });
  }

  const idToken = authorization.split("Bearer ")[1];

  try {
    // Memverifikasi token menggunakan Firebase Admin SDK
    const decodedToken = await admin.auth().verifyIdToken(idToken);
    req.user = decodedToken;
    next();
  } catch (error) {
    logError(error);
    return res
      .status(401)
      .json({ status: "fail", message: "Unauthorized: Invalid Access Token" });
  }
};

module.exports = authMiddleware;
