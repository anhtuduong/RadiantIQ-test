const express = require('express');
const app = express();
const port = 3001;

app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});

const message = '<center><iframe src="https://giphy.com/embed/U50kyGOHYjphS" width="480" height="274" frameBorder="0" class="giphy-embed" allowFullScreen></iframe><p>account-service STARTED SUCCESSFULLY!</p></center>';

app.get('/', (req, res) => {
    res.send(message)
});