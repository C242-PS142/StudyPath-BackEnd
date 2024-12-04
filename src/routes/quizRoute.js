const express = require("express");
const router = express.Router();
const { getAll, answers } = require("../controllers/quizController");
const authMiddleware = require("../middlewares/authMiddleware");

// Rute untuk mendapatkan semua kuis
router.get("/quiz", getAll);
// Rute untuk mengirimkan jawaban kuis
router.post("/quiz", authMiddleware, answers);

module.exports = router;
