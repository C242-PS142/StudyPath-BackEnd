const express = require('express'),
router = express.Router(),
{getAll} = require('../controllers/quiz.controller')

router.get('/quiz', getAll);

module.exports = router