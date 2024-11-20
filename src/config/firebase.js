const admin = require('firebase-admin');
const path = require('path');

// Inisialisasi Firebase Admin SDK
const serviceAccount  = require(path.resolve(__dirname, './../../service-account.json'));
admin.initializeApp({
  credential: admin.credential.cert(serviceAccount ),
});

module.exports = admin;
