/**
 * Fungsi untuk membersihkan input dari karakter-karakter berbahaya
 * @param {string} str - Input string yang akan disanitasi
 * @returns {string} - String yang sudah disanitasi
 */
const sanitizeString = (str) => {
  // Menghapus karakter < dan > untuk mencegah XSS
  return str.replace(/[<>]/g, "");
};

module.exports = { sanitizeString };
