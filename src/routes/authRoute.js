const express = require('express'),
router = express.Router(),
{ login, me } = require('../controllers/authController'),
authMiddleware = require('../middlewares/authMiddleware')

// Rute untuk mendapatkan informasi pengguna saat ini
router.get('/me', authMiddleware, me);
// Rute untuk menangani login pengguna
router.post('/login', login);

module.exports = router