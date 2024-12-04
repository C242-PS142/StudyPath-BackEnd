const express = require("express");
const mainRouter = express();
const quiz = require("./quizRoute");
const auth = require("./authRoute");
const predict = require("./predictRoute");
const recom = require("./recomRoute");

// Rute untuk kuis dengan prefiks '/api'
mainRouter.use("/api", quiz);
mainRouter.use("/api", predict);
mainRouter.use("/api", recom);
// Rute untuk autentikasi dengan prefiks '/auth'
mainRouter.use("/auth", auth);

module.exports = mainRouter;
