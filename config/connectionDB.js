var mysql   = require('mysql');

var connection = mysql.createConnection({
        host     : 'localhost',
        user     : 'root',
        password : 'root',
        database : 'mybuilding'
});

var getConnection = connection.connect(function(err){
    if(!err) {
        console.log("Database is connected ... \n\n" + err);
    } else {
        console.log("Error connecting database ... \n\n");  
        res.status(503).send(err);
    }
});

module.exports = connection;