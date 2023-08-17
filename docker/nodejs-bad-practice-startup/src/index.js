const express = require('express')

const app = express();

app.get('/', (req, res) => {
    res.end("Hello!");
})


const port = process.env.PORT || 3000

app.listen(port, '0.0.0.0', () => {
    console.info(`Listen on port: ${port}`)
})
