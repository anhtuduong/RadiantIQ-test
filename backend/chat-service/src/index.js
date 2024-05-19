const express = require('express');
const app = express();
const port = 3002;

app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});

const message = '<center><iframe src="https://giphy.com/embed/TdfyKrN7HGTIY" width="480" height="275" frameBorder="0" class="giphy-embed" allowFullScreen></iframe><p>chat-service STARTED SUCCESSFULLY!</p></center>';

app.get('/', (req, res) => {
    res.send(message)
});