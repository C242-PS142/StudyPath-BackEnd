const express = require('express');
const cors = require('cors');

const app = express();
app.use(cors());
app.use(express.json());

const mainRouter = require('./src/routes')

app.use((req, res, next)=>{
    console.log(`Log : ${req.method} ${req.url}`)
    next()
})

app.use(mainRouter)

module.exports = app;
