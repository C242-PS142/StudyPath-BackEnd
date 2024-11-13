const express = require('express'),
mainRouter = express(),
quiz = require('./quiz')

mainRouter.use('/api', quiz);

module.exports = mainRouter