const express = require('express');
const PORT = 8080;
const app = express();

app.get('/', (req, res) => {
  res.send('Burn world! BLARGH\n');
});

app.listen(PORT);
console.log('Running on http://localhost:' + PORT);