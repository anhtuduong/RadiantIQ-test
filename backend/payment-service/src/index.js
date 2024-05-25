const express = require('express');
const app = express();
const port = 3007;

app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});

const message = '<center><iframe src="https://giphy.com/embed/sDcfxFDozb3bO" width="480" height="269" frameBorder="0" class="giphy-embed" allowFullScreen></iframe><p>payment-service STARTED SUCCESSFULLY!</p></center>';

app.get('/', (req, res) => {
    res.send(message)
});