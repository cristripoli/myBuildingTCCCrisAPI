var connection = require('../config/connectionDB');

var city = {

  getAll: function(req, res) {
    connection.query('SELECT * from city', function(err, rows, fields) {
        if (!err) {
            console.log('GET OK');
            res.json(rows);
           
        }else{
            console.log(err);
            res.status(404).send('Not found!');
        }
    });
  },

  getCitiesByState: function(req, res) {

    var query = 'SELECT city.id, city.name, city.state_id ' +
            'FROM city ' +
            'INNER JOIN state ' +
                'ON state.id = city.state_id ' +
                    'AND state.id = ';

    connection.query(query + req.params.id,  function(err, rows, fields) {
        if (!err) {
            if (rows.length > 0) {
                console.log('GET OK');
                res.json(rows);
            }else{
                console.log('This state does not exists!');
                res.status(404).send('This state does not exists!');
            }
        }else{
            console.log(err);
            res.status(404).send('Not found!');
        }
    });
  },

  getOne: function(req, res) {
    connection.query('SELECT * from city where id = ' + req.params.id, function(err, rows, fields) {
        if (!err) {
            if (rows.length > 0) {
                console.log('GET by ID OK');           
                res.json(rows);
            }
            else{
                console.log('This city does not exists!');
                res.status(404).send('This city does not exists!');
            }
        }else{
            console.log(err);
            res.status(404).send('Not found!');
        }
    });
  },

  create: function(req, res) {
    connection.query('INSERT INTO city SET ?',req.body, function(err, rows, fields) {
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
    connection.query('UPDATE city SET ? WHERE id='+req.params.id, req.body, function(err, rows, fields) {
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
    connection.query('DELETE FROM city WHERE id = ?', req.params.id, function(err, rows, fields) {
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

module.exports = city;
