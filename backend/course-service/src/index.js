const express = require('express');
const app = express();
const port = 3004;

app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});

const message = '<center><iframe src="https://giphy.com/embed/0MkghWFIJYMtElBLU4" width="480" height="270" frameBorder="0" class="giphy-embed" allowFullScreen></iframe><p>course-service STARTED SUCCESSFULLY!</p></center>';

app.get('/', (req, res) => {
    res.send(message)
});