const express = require('express')
const path= require('path')
const app = express()
const PORT = process.env.PORT || 3000

app.get('/test-api/feed', (req, res) => {
  res.sendFile(path.join(__dirname + '/public/feed.json'))
})

app.listen(PORT, () => console.log(`Server listening on port: ${PORT}`))
