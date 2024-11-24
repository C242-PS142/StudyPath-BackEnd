// src/services/mlService.js
const axios = require('axios');

exports.predict = async function(data, callback) {
    const input = data;
    try {
        const response = await axios.post(process.env.ML_API_URL, {input});
        callback(null, response.data)
    } catch (err) {
        callback(err, null);
    }
}