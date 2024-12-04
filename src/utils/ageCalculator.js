/**
 * Calculate age based on the birthdate.
 * @param {string} birthDate - The birth date in ISO 8601 format (e.g., "2024-11-21T00:00:00.000Z").
 * @returns {number} - The calculated age in years.
 */
function calculateAge(birthDate) {
  const birthDateObj = new Date(birthDate);
  const currentDate = new Date();
  let age = currentDate.getFullYear() - birthDateObj.getFullYear();
  const monthDifference = currentDate.getMonth() - birthDateObj.getMonth();

  // Adjust age if the birthday hasn't occurred yet this year
  if (
    monthDifference < 0 ||
    (monthDifference === 0 && currentDate.getDate() < birthDateObj.getDate())
  ) {
    age--;
  }

  return age;
}

module.exports = calculateAge;
