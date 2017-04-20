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
    var query = 'SELECT * ' +
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

  getEntriesByMonth: function(req, res) {
    var query = 'SELECT * ' +
                'FROM entry ' +
                'WHERE MONTH(entry.date) = ';
    connection.query(query + req.params.month, function(err, rows, fields) {
        if (!err) {
            if (rows.length > 0) {
                console.log('GET entries by month ID OK');           
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

  getEntriesByItem: function(req, res) {
    var query = 'SELECT * ' +
                'FROM item ' +
                'INNER JOIN entry ' +
                    'ON item.id = entry.id_item ' +
                        'AND item.id = ';
    connection.query(query + req.params.id, function(err, rows, fields) {
        if (!err) {
            if (rows.length > 0) {
                console.log('GET entries by item ID OK');           
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

getEntriesByItemAndCity: function(req, res) {
    var query = 'SELECT * ' +
                'FROM item ' +
                'INNER JOIN entry ' +
                'INNER JOIN store ' +
                'INNER JOIN city ' +
                    'ON item.id = entry.id_item ' +
                        'AND store.id = entry.store_id ' +
                        'AND store.city_id = city.id ' +
                        'AND city.id = ' + req.params.city_id
                        ' AND item.id = ';

    console.log('req.params.id ' + req.params.id);
    console.log('req.params.id ' + req.params.city_id);
    connection.query(query + req.params.id, function(err, rows, fields) {

        if (!err) {
            if (rows.length > 0) {
                console.log('GET entries by item ID OK');           
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
