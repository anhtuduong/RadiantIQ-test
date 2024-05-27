const express = require('express');
const app = express();
const port = 3008;

app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});

const message = '<center><iframe src="https://giphy.com/embed/bCYK1Cmi1VCso" width="480" height="203" frameBorder="0" class="giphy-embed" allowFullScreen></iframe><p>ranking-service STARTED SUCCESSFULLY!</p></center>';

app.get('/', (req, res) => {
    res.send(message)
});