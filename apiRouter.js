var express = require('express')
var loginlogsCtr=require('./routes/loginlogsCtr')


exports.router=(function(req,res){
    var apiRouter=express.Router()

    //apiRouter.route('/loginlogs/').get(loginlogsCtr.getall)
    apiRouter.route('/loginlogs/').get(loginlogsCtr.loginlogs)
    //apiRouter.route('/logout/').get(loginlogsCtr.logout)

return apiRouter
})();