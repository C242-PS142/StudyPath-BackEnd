const express = require('express'),
mainRouter = express(),
quiz = require('./quizRoute'),
auth = require('./authRoute')

mainRouter.use('/api', quiz);
mainRouter.use('/auth', auth);

module.exports = mainRouter