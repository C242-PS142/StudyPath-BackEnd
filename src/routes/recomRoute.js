const { recom } = require('../controllers/recomController');
const authMiddleware = require('../middlewares/authMiddleware');
const express = require('express'),
router = express.Router();

router.get('/recommendation', authMiddleware, recom);

module.exports = router;