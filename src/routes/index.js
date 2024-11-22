const express = require('express'),
mainRouter = express(),
quiz = require('./quizRoute'),
auth = require('./authRoute')

// Rute untuk kuis dengan prefiks '/api'
mainRouter.use('/api', quiz);
// Rute untuk autentikasi dengan prefiks '/auth'
mainRouter.use('/auth', auth);

module.exports = mainRouter