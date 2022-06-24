const express = require('express')
const path= require('path')
const app = express()
const PORT = process.env.PORT || 3000

function log(message) {
  let date = new Date().toISOString()
  console.log(date + " // " + message)
}

app.get('/api/v1/feed', (req, res) => {
  log("Sending response for " + req.url)
  res.sendFile(path.join(__dirname + '/Responses/feed.json'))
})
app.get('/api/v1/image/:id', (req, res) => {
  log("Sending response for " + req.url)
  res.sendFile(path.join(__dirname + '/Responses/images/' + req.params.id + '.jpg'))
})

app.get('/test-api/feed', (req, res) => {
  log("Sending response for " + req.url)
  res.sendFile(path.join(__dirname + '/Samples/feed.json'))
})
app.get('/test-api/feed/73A7F70C-75DA-4C2E-B5A3-EED40DC53AA6/image', (req, res) => {
  log("Sending response for " + req.url)
  res.sendFile(path.join(__dirname + '/Samples/image.png'))
})

app.all('*', (req, res) => {
  log("Resource not found for " + req.url)
  res.status(404).send('Not found')
})

app.listen(PORT, () => console.log(`Server listening on port: ${PORT}`))
