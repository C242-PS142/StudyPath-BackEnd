const { predict } = require('../controllers/predictController');
const authMiddleware = require('../middlewares/authMiddleware');
const express = require('express'),
router = express.Router();

router.get('/predict', authMiddleware, predict);

module.exports = router;