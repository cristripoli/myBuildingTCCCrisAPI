var connection = require('../config/connectionDB');

var users = {

  getAll: function(req, res) { 
     connection.query('SELECT * FROM user', function(err, rows, fields) {
        if (!err) {
            console.log('GET OK: ', rows);
            res.json(rows);
           
        }else{
            res.status(404).send('Not found!');
        }
     });   
  },

  getOne: function(req, res) {
     connection.query("SELECT * FROM user WHERE id = " + req.params.id, function(err, rows, fields) {
        if (!err) {
            console.log('GET by ID OK: ', rows);
            res.json(rows);
           
        }else{
            res.status(404).send('Not found!');
        }
     });     
  },

  create: function(req, res) {
     connection.query('INSERT INTO user SET ?',req.body, function(err, rows, fields) {
        if (!err) {
            console.log('POST OK');
            res.status(201).json(rows);
        }else{
            res.status(404).send('User already exists or something is wrong');
            connection.rollback(function() {
                console.log(err);
                return;
            });
        }
     });  
  },

  update: function(req, res) {
        connection.query('UPDATE user SET ? WHERE id='+req.params.id, req.body, function(err, rows, fields) {
        if (!err) {
            console.log('PUT OK');
            res.status(201).json(rows);
        }else{
            console.log(err);
            res.status(404).send('Not update! Something is wrong!');
        }
     });    
  },

  delete: function(req, res) {
     connection.query("DELETE FROM user WHERE id = " + req.params.id, function(err, rows, fields) {
        if (!err) {
            console.log('User id ' + req.params.id + ' deleted!');
            res.status(200).send('User deleted!');
           
        }else{
            res.status(404).send('Not delete! Something is wrong!');
        }
     });  
  }
};
module.exports = users;
