const express = require("express");
const cors = require("cors");
const bodyParser = require("body-parser");
const dotenv = require("dotenv");
const path = require("path");
const swaggerUi = require('swagger-ui-express');
const YAML = require('yamljs');
const swaggerDoc = YAML.load('./docs.yaml');
dotenv.config();

const app = express();
app.use(cors());
app.use(express.json());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

app.use(express.static("public"));

app.get("/", (req, res) => {
  res.sendFile(path.resolve(__dirname, "../public/index.html"));
});

app.get("/login", (req, res) => {
  console.log(__dirname);
  res.sendFile(path.resolve(__dirname, "../public/login.html"));
});

app.use('/api-docs', swaggerUi.serve, swaggerUi.setup(swaggerDoc));

const mainRouter = require("./routes");
const { loggerMiddleware } = require("./middlewares/loggerMiddleware");

app.use(loggerMiddleware);

app.use(mainRouter);

module.exports = app;
