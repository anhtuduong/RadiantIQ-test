const express = require('express');
const app = express();
const port = 3003;

app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});

const message = '<center><iframe src="https://giphy.com/embed/1eCh4c3XMuFhoyQ6KL" width="480" height="269" style="" frameBorder="0" class="giphy-embed" allowFullScreen></iframe><p>class-service STARTED SUCCESSFULLY!</p></center>';

app.get('/', (req, res) => {
    res.send(message)
});