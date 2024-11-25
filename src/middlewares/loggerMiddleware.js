const { logRequest, logRequestToFile } = require("../utils/loggerUtil")

exports.loggerMiddleware = function(req, res, next) {
    logRequest(req);
    logRequestToFile(req);
    next()
}