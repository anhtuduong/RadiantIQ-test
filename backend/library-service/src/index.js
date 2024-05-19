const express = require('express');
const app = express();
const port = 3005;

app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});

const message = '<center><iframe src="https://giphy.com/embed/9waIKqGT9i3RnBACLD" width="480" height="480" frameBorder="0" class="giphy-embed" allowFullScreen></iframe><p>library-service STARTED SUCCESSFULLY!</p></center>';

app.get('/', (req, res) => {
    res.send(message)
});