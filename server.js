const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;

app.get('*', (req, res) => {
  res.redirect(301, 'https://chat.chataizoo.com');
});

app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
