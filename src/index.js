import express from 'express';

const app = express();

app.get('/', (req, res) => {
  return res.send('Hello World');
});

const port = process.env.PORT || 3000;

app.listen(port, () => {
  console.log(`Listening on port ${port}`);
});
