const express = require('express'),
router = express.Router(),
{getAll, answers} = require('../controllers/quizController')

router.get('/quiz', getAll);
router.post('/quiz', answers);

module.exports = router