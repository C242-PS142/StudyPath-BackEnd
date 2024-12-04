const app = require("./src/app");
const PORT = process.env.PORT || 3000;
const HOST = 'localhost';

app.listen(PORT, () => {
  console.log(`Server berjalan di http://${HOST}:${PORT}`);
});
