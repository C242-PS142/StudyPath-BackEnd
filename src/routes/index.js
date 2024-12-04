const express = require("express"),
  mainRouter = express(),
  quiz = require("./quizRoute"),
  auth = require("./authRoute"),
  predict = require("./predictRoute"),
  recom = require("./recomRoute");

// Rute untuk kuis dengan prefiks '/api'
mainRouter.use("/api", quiz);
mainRouter.use("/api", predict);
mainRouter.use("/api", recom);
// Rute untuk autentikasi dengan prefiks '/auth'
mainRouter.use("/auth", auth);

module.exports = mainRouter;
