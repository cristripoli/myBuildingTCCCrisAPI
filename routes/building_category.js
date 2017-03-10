var connection = require('../config/connectionDB');

var building_category = {

  getAll: function(req, res) {
    connection.query('SELECT * from building_category', function(err, rows, fields) {
        if (!err) {
            console.log('GET OK');
            res.json(rows);
           
        }else{
            res.status(404).send('Not found!');
        }
    });
  },

  getOne: function(req, res) {
    connection.query('SELECT * from building_category where id = ' + req.params.id, function(err, rows, fields) {
        if (!err) {
            if (rows.length > 0) {
                console.log('GET by ID OK');           
                res.json(rows);
            }
            else{
                console.log('This building_category does not exists!');
                res.status(404).send('This building_category does not exists!');
            }
        }else{
            res.status(404).send('Not found!');
        }
    });
  },

  create: function(req, res) {
    req.body.status = 'NEW';
    connection.query('INSERT INTO building_category SET ?',req.body, function(err, rows, fields) {
        if (!err) {
            console.log('POST OK');
            res.status(201).json(rows);
           
        }else{
            res.status(404).send('Not insert! Something is wrong!');
        }
    });    
  },

  update: function(req, res) {
    connection.query('UPDATE building_category SET ? WHERE id='+req.params.id, req.body, function(err, rows, fields) {
        if (!err) {
            console.log('PUT OK');
            res.status(201).json(rows);
           
        }else{
            res.status(404).send('Not update! Something is wrong!');
        }
    });    
  },

  delete: function(req, res) {
    connection.query('DELETE FROM building_category WHERE id = ?', req.params.id, function(err, rows, fields) {
        if (!err) {
            console.log('DELETE OK: ', rows);
            res.status(201).json(rows);
           
        }else{
            res.status(404).send('Not delete! Something is wrong!');
        }
    });    
  }
};


module.exports = building_category;
