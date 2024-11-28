const ImgUpload = require("../services/gcsService");
const express = require("express"),
  router = express.Router(),
  { login, me, register, update } = require("../controllers/authController"),
  authMiddleware = require("../middlewares/authMiddleware"),
  Multer = require("multer"),
  { registerValidator } = require("../middlewares/authValidator");

const multer = Multer({
  storage: Multer.MemoryStorage,
  limits: { fileSize: 5 * 1024 * 1024 },
  fileFilter: (req, file, cb) => {
    if (file.mimetype.startsWith("image/")) {
      return cb(null, true);
    }
    cb(new Error("Invalid file type"));
  },
});

// Rute untuk mendapatkan informasi pengguna saat ini
router.get("/me", authMiddleware, me);
// Rute untuk menangani login pengguna
router.post("/login", login);
// Rute untuk menangani register pengguna
router.post("/register", multer.single("avatar"), ImgUpload.uploadToGcs, registerValidator, register);

router.put("/edit", multer.single("avatar"), ImgUpload.uploadToGcs, authMiddleware, update);
module.exports = router;
