const express = require('express')
const app = express()
const router = require('./modules')
const cors = require('cors')


app.use(express.json())
app.use(cors())
app.use(router)
app.use('/*', (req, res) => res.status(404))

app.listen(process.env.PORT || 8000)