var connection = require('../config/connectionDB');

var item = {

  getAll: function(req, res) {
    connection.query('SELECT * from item', function(err, rows, fields) {
        if (!err) {
            console.log('GET OK');
            res.json(rows);
           
        }else{
            console.log(err);
            res.status(404).send('Not found!');
        }
    });
  },

  getOne: function(req, res) {
    connection.query('SELECT * from item where id = ' + req.params.id, function(err, rows, fields) {
        if (!err) {
            if (rows.length > 0) {
                console.log('GET by ID OK');           
                res.json(rows);
            }
            else{
                console.log('This item does not exists!');
                res.status(404).send('This item does not exists!');
            }
        }else{
            console.log(err);
            res.status(404).send('Not found!');
        }
    });
  },

  getItemsByCategory: function(req, res) {
    connection.query('SELECT * from item where id_category = ' + req.params.id, function(err, rows, fields) {
        if (!err) {
            if (rows.length > 0) {
                console.log('GET items by category ID OK');           
                res.json(rows);
            }
            else{
                console.log('This item does not exists!');
                res.status(404).send('This item does not exists!');
            }
        }else{
            console.log(err);
            res.status(404).send('Not found!');
        }
    });
  },

  create: function(req, res) {
    connection.query('INSERT INTO item SET ?',req.body, function(err, rows, fields) {
        if (!err) {
            console.log('POST OK');
            res.status(201).json(rows);
           
        }else{
            console.log(err);
            res.status(404).send('Not insert! Something is wrong!');
        }
    });    
  },

  update: function(req, res) {
    connection.query('UPDATE item SET ? WHERE id='+req.params.id, req.body, function(err, rows, fields) {
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
    connection.query('DELETE FROM item WHERE id = ?', req.params.id, function(err, rows, fields) {
        if (!err) {
            console.log('DELETE OK: ', rows);
            res.status(201).json(rows);
           
        }else{
            console.log(err);
            res.status(404).send('Not delete! Something is wrong!');
        }
    });    
  }
};


module.exports = item;
