var express = require('express');
var router = express.Router();

var building = require('./building.js');
var building_category = require('./building_category.js');
var category = require('./category.js');
var credential = require('./credential.js');
var item = require('./item.js');
var user = require('./user.js');
var entry = require('./entry.js');
var connection = require('../config/connectionDB.js');

router.get('/api/credential', credential.getAll);
router.get('/api/credential/:id', credential.getOne);
router.post('/api/credential/', credential.create);
router.put('/api/credential/:id', credential.update);
router.delete('/api/credential/:id', credential.delete);

router.get('/api/user', user.getAll);
router.get('/api/user/:id', user.getOne);
router.post('/api/user/', user.create);
router.put('/api/user/:id', user.update);
router.delete('/api/user/:id', user.delete);

router.get('/api/building', building.getAll);
router.get('/api/building/:id', building.getOne);
router.post('/api/building/', building.create);
router.put('/api/building/:id', building.update);
router.delete('/api/building/:id', building.delete);

router.get('/api/admin/building_category', building_category.getAll);
router.get('/api/admin/building_category/:id', building_category.getOne);
router.post('/api/building_category/', building_category.create);
router.put('/api/admin/building_category/:id', building_category.update);
router.delete('/api/admin/building_category/:id', building_category.delete);

router.get('/api/category', category.getAll);
router.get('/api/category/:id', category.getOne);
router.post('/api/category/', category.create);
router.put('/api/category/:id', category.update);
router.delete('/api/category/:id', category.delete);

router.get('/api/item', item.getAll);
router.get('/api/item/:id', item.getOne);
router.get('/api/getItemsByCategory/:id', item.getItemsByCategory);
router.post('/api/item/', item.create);
router.put('/api/item/:id', item.update);
router.delete('/api/item/:id', item.delete);

router.get('/api/entry', entry.getAll);
router.get('/api/entry/:id', entry.getOne);
router.get('/api/entryByCategory/:id', entry.getEntriesByCategory);
router.post('/api/entry/', entry.create);
router.put('/api/entry/:id', entry.update);
router.delete('/api/entry/:id', entry.delete);

module.exports = router;
