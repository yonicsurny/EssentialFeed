const express = require('express')
const path= require('path')
const app = express()
const PORT = process.env.PORT || 3000

function log(message) {
  let date = new Date().toISOString()
  console.log(date + " // " + message)
}

app.get('/test-api/feed', (req, res) => {
  log("Sending response for " + req.url)
  res.sendFile(path.join(__dirname + '/Responses/feed.json'))
})
app.all('*', (req, res) => {
  log("Resource not found for " + req.url)
  res.status(404).send('Not found')
})

app.listen(PORT, () => console.log(`Server listening on port: ${PORT}`))
