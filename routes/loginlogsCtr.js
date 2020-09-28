//import
var models = require('../models')
const fs=require('fs')

//routes
module.exports={

    loginlogs:function(req,res){
        models.LoginLogs.findAll({
            attributes :['user','action','date'],
            where:{action:'login'}
        }).then(function(login){
            //res.status(200).json(loginlogs)
/***********************/
            models.LoginLogs.findAll({
                attributes :['user','action','date'],
                where:{action:'logout'},
            }).then(function(logout){
                /***********ici tri par date*******/
                hash =login.reduce((p,c) => (p[c.date] ? p[c.date].push(c) : p[c.date] = [c],p) ,{}),
                LOGIN = Object.keys(hash).map(k => ({date: k, users: hash[k]}));

                hash =logout.reduce((p,c) => (p[c.date] ? p[c.date].push(c) : p[c.date] = [c],p) ,{}),
                LOGOUT = Object.keys(hash).map(k => ({date: k, users: hash[k]}));

                var jsons = new Array();
                jsons.push({LOGIN});
                jsons.push({LOGOUT});

                res.status(200).json(jsons)
                /***********end tri par date********/
               // res.status(200).json({'LOGIN':login,'LOGOUT':logout})

            }).catch(function(err){
                res.status(500).json({'error':'cannot fetch loginlogs'})
            }) 
/**********************/
         }).catch(function(err){
             res.status(500).json({'error':'cannot fetch loginlogs'})
         }) 
    }
  
}