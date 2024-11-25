const express = require('express');
const cors = require('cors');
const bodyParser = require('body-parser');
const dotenv = require('dotenv');

dotenv.config();

const app = express();
app.use(cors());
app.use(express.json());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

app.use(express.static('public'));

app.get('/', (req, res) => {
    res.sendFile(__dirname + '/public/index.html');
});



const mainRouter = require('./routes');
const { loggerMiddleware } = require('./middlewares/loggerMiddleware');

app.use(loggerMiddleware)

app.use(mainRouter)

module.exports = app;
