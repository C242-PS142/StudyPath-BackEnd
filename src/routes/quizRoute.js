const express = require('express'),
router = express.Router(),
{getAll, answers} = require('../controllers/quizController'),
authMiddleware = require('../middlewares/authMiddleware')

// Rute untuk mendapatkan semua kuis
router.get('/quiz', getAll);
// Rute untuk mengirimkan jawaban kuis
router.post('/quiz', authMiddleware, answers);

module.exports = router