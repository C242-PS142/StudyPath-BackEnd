const fs = require('fs');

exports.logRequest = function (req) {
  const currentDate = new Date().toISOString();
  console.log(`[${currentDate}] ${req.method} ${req.originalUrl}`);
};

exports.logError = function (error) {
  const currentDate = new Date().toISOString();
  console.error(`[${currentDate}] ERROR: ${error.message}`);
  console.error(error.stack);
};

exports.logRequestToFile = function (req) {
  const currentDate = new Date().toISOString();
  const logMessage = `[${currentDate}] ${req.method} ${req.originalUrl}\n`;

  fs.appendFile("server.log", logMessage, (err) => {
    if (err) {
      console.error("Error writing to log file", err);
    }
  });
};
