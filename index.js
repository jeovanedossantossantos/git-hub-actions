const express = require('express')

const app = express()

app.get("/", (req, res) => {
    return res.send("Funcionando na aws")
})

app.listen(3333, (req, res) => {
    console.log("Listening on 3333")
})