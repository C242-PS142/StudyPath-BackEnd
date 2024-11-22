const express = require('express'),
router = express.Router(),
{getAll, answers} = require('../controllers/quizController')

// Rute untuk mendapatkan semua kuis
router.get('/quiz', getAll);
// Rute untuk mengirimkan jawaban kuis
router.post('/quiz', answers);

module.exports = router