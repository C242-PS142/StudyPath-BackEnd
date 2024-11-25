// src/middleware/authValidator.js
const { body, validationResult } = require('express-validator');

// Validator untuk registrasi
const registerValidator = [
  body('name')
    .trim()
    .notEmpty().withMessage('Name tidak boleh kosong')
    .isLength({ min: 3 }).withMessage('Name minimal 3 karakter'),
  body('email')
    .trim()
    .isEmail().withMessage('Email tidak valid'),
  (req, res, next) => {
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
      return res.status(400).json({ errors: errors.array() });
    }
    next();
  }
];

// Validator untuk login
const loginValidator = [
  body('email')
    .trim()
    .isEmail().withMessage('Email tidak valid'),
  body('password')
    .trim()
    .notEmpty().withMessage('Password tidak boleh kosong'),
  (req, res, next) => {
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
      return res.status(400).json({ errors: errors.array() });
    }
    next();
  }
];

module.exports = { registerValidator, loginValidator };
