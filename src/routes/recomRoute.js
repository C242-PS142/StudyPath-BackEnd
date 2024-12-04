const { recom } = require("../controllers/recomController");
const authMiddleware = require("../middlewares/authMiddleware");
const express = require("express");
const router = express.Router();

router.get("/recommendation", authMiddleware, recom);

module.exports = router;
