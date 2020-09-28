var express = require('express')
var bodyparser = require('body-parser')
var apiRouter = require('./apiRouter').router;
var server = express()
server.use(bodyparser.urlencoded({extended:true}))
server.use(bodyparser.json())
server.use('/api/',apiRouter)

server.listen(8080, function(){
    console.log("server en ecoute :)")
})

server.get('/',function(req,res){

    res.status(200).send("bonjour mon serveur")
})