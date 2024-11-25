const ImgUpload = require('../services/gcsService');
const express = require('express'),
router = express.Router(),
{ login, me, register } = require('../controllers/authController'),
authMiddleware = require('../middlewares/authMiddleware'),
Multer = require('multer'),
{ registerValidator } = require('../middlewares/authValidator')

const multer = Multer({
    storage: Multer.MemoryStorage,
    fileSize: 5 * 1024 * 1024
})

// Rute untuk mendapatkan informasi pengguna saat ini
router.get('/me', authMiddleware, me);
// Rute untuk menangani login pengguna
router.post('/login', login);
// Rute untuk menangani register pengguna
router.post('/register', multer.single('avatar'), ImgUpload.uploadToGcs, registerValidator, register);

module.exports = router