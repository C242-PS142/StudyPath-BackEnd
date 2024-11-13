const express = require('express'),
router = express.Router(),
{getAll, answers} = require('../controllers/quiz.controller')

router.get('/quiz', getAll);
router.post('/quiz', answers);

module.exports = router