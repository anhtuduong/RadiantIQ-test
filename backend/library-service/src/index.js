const express = require('express');
const app = express();
const port = 3005;

app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});

const message = '<center><iframe src="https://giphy.com/embed/MhHXeM4SpKrpC" width="480" height="269" frameBorder="0" class="giphy-embed" allowFullScreen></iframe><p>library-service STARTED SUCCESSFULLY!</p></center>';

app.get('/', (req, res) => {
    res.send(message)
});