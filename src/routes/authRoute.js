const express = require('express'),
router = express.Router(),
{ login, me } = require('../controllers/authController'),
authMiddleware = require('../middlewares/authMiddleware')

router.get('/me', authMiddleware, me);
router.post('/login', login);

module.exports = router