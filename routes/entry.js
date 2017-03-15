var connection = require('../config/connectionDB');

var entry = {

  getAll: function(req, res) {
    connection.query('SELECT * from entry', function(err, rows, fields) {
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
    connection.query('SELECT * from entry where id = ' + req.params.id, function(err, rows, fields) {
        if (!err) {
            if (rows.length > 0) {
                console.log('GET by ID OK');           
                res.json(rows);
            }
            else{
                console.log('This entry does not exists!');
                res.status(404).send('This entry does not exists!');
            }
        }else{
            console.log(err);
            res.status(404).send('Not found!');
        }
    });
  },

getEntriesByCategory: function(req, res) {
    var query = 'SELECT entry.id, entry.description, entry.date, entry.value, entry.id_item ' +
                'FROM category ' +
                'INNER JOIN item ' +
                'INNER JOIN entry ' +
                    'ON category.id = item.id_category ' +
                        'AND item.id = entry.id_item ' +
                        'AND category.id = ';
    connection.query(query + req.params.id, function(err, rows, fields) {
        if (!err) {
            if (rows.length > 0) {
                console.log('GET entries by category ID OK');           
                res.json(rows);
            }
            else{
                console.log('This entry does not exists!');
                res.status(404).send('This entry does not exists!');
            }
        }else{
            console.log(err);
            res.status(404).send('Not found!');
        }
    });
  },

  create: function(req, res) {
    connection.query('INSERT INTO entry SET ?',req.body, function(err, rows, fields) {
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
    connection.query('UPDATE entry SET ? WHERE id='+req.params.id, req.body, function(err, rows, fields) {
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
    connection.query('DELETE FROM entry WHERE id = ?', req.params.id, function(err, rows, fields) {
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


module.exports = entry;
