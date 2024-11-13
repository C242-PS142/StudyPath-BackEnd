const { getAll } = require('../models/quiz.model');

exports.getAll = function(req, res, next) {
    getAll(function(err, result) {
        if (err) {
            res.status(500).json({ status: 'fail', message: 'Error while retrieving data from database' });
        } else {
            res.status(200).json({status: 'success', data: { quiz: result } });
        }
    });
}