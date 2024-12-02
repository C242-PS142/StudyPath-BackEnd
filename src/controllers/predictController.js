const { getByID } = require("../models/predictModel")
const { logError } = require("../utils/loggerUtil")

exports.predict = function (req, res, next) {
    getByID(req.user.user_id, function(err, result) {
        if (err) {
            logError(err);
            res.status(500).json({ status: "fail", message: "Internal Server Error" });
        } else {
            if (result.length === 0) {
                res.status(200).json({status: "success", message: "Personality fetched successfully", data: { personality: {} }});
            } else {
                res.status(200).json({status: "success", message: "Personality fetched successfully", data: { personality: {
                    'Keterbukaan Sosial, Energi, dan Antusiasme': result[0].extroversion,
                    'Kestabilan Emosi': result[0].neuroticism,
                    'Kesepakatan': result[0].agreeableness,
                    'Ketelitian': result[0].conscientiousness,
                    'Keterbukaan terhadap Pengalaman': result[0].openness,
                } }});
            }
        }
    })
}