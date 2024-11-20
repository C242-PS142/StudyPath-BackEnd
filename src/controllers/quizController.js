const { getAll, submit } = require('../models/quizModel');

exports.getAll = function(req, res, next) {
    getAll(function(err, result) {
        if (err) {
            res.status(500).json({ status: 'fail', message: 'Error while retrieving data from database' });
        } else {
            res.status(200).json({status: 'success', message: 'Quiz fetched successfully', data: { quiz: result } });
        }
    });
}

exports.answers = function(req, res, next) {
    const answers = req.body.answers;

    if (!Array.isArray(answers) || answers.length === 0) {
        return res.status(400).json({ message: 'Invalid answer' });
    }
    const values = answers.map(answer => [
        answer.question_code,
        answer.user_id,
        answer.answer_value
      ]);

    submit(values, function(err, result) {
        if (err) {
            res.status(500).json({ status: 'fail', message: err});
        } else {
            if (result['affectedRows'] === 50) {
                res.status(201).json({status: 'success', message: "Successfully to answer quiz", data: {id: result.insertId}})
            } else {
                res.status(404).json({status: 'fail', message: "Failed to answer quiz"})
            }
        }
    })
}