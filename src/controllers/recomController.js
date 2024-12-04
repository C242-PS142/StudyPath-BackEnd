const { getByID } = require("../models/recomModel");
const { logError } = require("../utils/loggerUtil");

exports.recom = function (req, res, next) {
  getByID(req.user.user_id, function (err, result) {
    if (err) {
      logError(err);
      res
        .status(500)
        .json({ status: "fail", message: "Internal Server Error" });
    } else {
      if (result.length === 0) {
        res.status(200).json({
          status: "success",
          message: "Personality fetched successfully",
          data: { recommendation: {} },
        });
      } else {
        res.status(200).json({
          status: "success",
          message: "Recommendation fetched successfully",
          data: { recommendation: result[0] },
        });
      }
    }
  });
};
