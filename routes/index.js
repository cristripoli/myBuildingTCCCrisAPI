var express = require('express');
var router = express.Router();

var building = require('./building.js');
var building_category = require('./building_category.js');
var category = require('./category.js');
var credential = require('./credential.js');
var item = require('./item.js');
var user = require('./user.js');
var entry = require('./entry.js');
var store = require('./store.js');
var city = require('./city.js');
var state = require('./state.js');
var connection = require('../config/connectionDB.js');


/********************** CREDENTIAL ***********************/

/**
 * @api {get} /credential getCredential
 * @apiName getCredential
 * @apiGroup Credential
 */
router.get('/api/credential', credential.getAll);

/**
 * @api {get} /credential/:id getCredentialById
 * @apiName getCredentialById
 * @apiGroup Credential
 * @apiParam {Number} id Credential unique ID.
 */
router.get('/api/credential/:id', credential.getOne);

/**
 * @api {post} /credential postCredential
 * @apiName postCredential
 * @apiGroup Credential
 * @apiParam {Object} Credential object.
 */
router.post('/api/credential/', credential.create);

/**
 * @api {put} /credential/:id putCredential
 * @apiGroup Credential
 * @apiName putCredential
 * @apiParam {Object} Credential object.
 * @apiParamExample {json} Request-Example:
 *     {
 *      "id":1,
 *       "username":"admin",
 *       "password":"admin"
 *      }
 */
router.put('/api/credential/:id', credential.update);

/**
 * @api {delete} /credential/:id deleteCredential
 * @apiName deleteCredential
 * @apiGroup Credential
 * @apiName deleteCredential
 * @apiParam {Number} id Credential unique ID.
 * @apiParam {Object} Credential object.
 * @apiParamExample {json} Request-Example:
 *     {
 *      "id":1,
 *       "username":"admin",
 *       "password":"admin"
 *      }
 */
router.delete('/api/credential/:id', credential.delete);


/********************** USER ***********************/

/**
 * @api {get} /user getUser
 * @apiName getUser
 * @apiGroup User
 */
router.get('/api/user', user.getAll);

/**
 * @api {get} /user/:id getUserById
 * @apiName getUserById
 * @apiGroup User
 * @apiParam {Number} id User unique ID
 */
router.get('/api/user/:id', user.getOne);

/**
 * @api {post} /user postUser
 * @apiName postUser
 * @apiGroup User
 * @apiParam {Object} User object.
 * @apiParamExample {json} Request-Example:
 *     {
 *      "id":1,
 *       "name":"Admin",
 *       "email":"admin@admin",
 *       "id_credentials":1
 *     }
 */
router.post('/api/user/', user.create);

/**
 * @api {put} /user/:id putUser
 * @apiName putUser
 * @apiGroup User
 * @apiParam {Number} id User unique ID.
 * @apiParam {Object} User object.
 * @apiParamExample {json} Request-Example:
 *     {
 *      "id":1,
 *       "name":"Admin",
 *       "email":"admin@admin",
 *       "id_credentials":1
 *     }
 */
router.put('/api/user/:id', user.update);

/**
 * @api {delete} /user/:id deleteUser
 * @apiName deleteUser
 * @apiGroup User
 * @apiParam {Number} id User unique ID
 */
router.delete('/api/user/:id', user.delete);


/********************** BUILDING ***********************/

/**
 * @api {get} /building getBuilding
 * @apiName getBuilding
 * @apiGroup Building
 */
router.get('/api/building', building.getAll);

/**
 * @api {get} /building/:id
 * @apiName getbBuildingById
 * @apiGroup Building
 * @apiParam {Number} id Building unique ID.
 */
router.get('/api/building/:id', building.getOne);

/**
 * @api {post} /building postbBuilding
 * @apiName postbBuilding
 * @apiGroup Building
 * @apiParam {Object} Building object.
 * @apiParamExample {json} Request-Example:
 *     {
 *      "id":1,
 *      "name":"Minha Obra",
 *      "description":"Minha Obra",
 *      "id_user":1,
 *      "estimated_value":100000
 *     }
 */
router.post('/api/building/', building.create);

/**
 * @api {put} /building/:id putBuilding
 * @apiName putBuilding
 * @apiGroup Building
 * @apiParam {Number} id Building unique ID.
 * @apiParam {Object} Building object.
 * @apiParamExample {json} Request-Example:
 *     {
 *      "id":1,
 *      "name":"Minha Obra",
 *      "description":"Minha Obra",
 *      "id_user":1,
 *      "estimated_value":100000
 *     }
 */
router.put('/api/building/:id', building.update);

/**
 * @api {delete} /building/:id deleteBuilding
 * @apiName deleteBuilding
 * @apiGroup Building
 * @apiParam {Number} id Building unique ID.
 */
router.delete('/api/building/:id', building.delete);


/********************** BUILDING_CATEOGORY ***********************/

/**
 * @api {get} /building_category/:id getBuildingCategory
 * @apiName getBuildingCategory
 * @apiGroup BuildingCategory
 */
router.get('/api/building_category', building_category.getAll);

/**
 * @api {get} /building_category/:id getBuildingCategoryById
 * @apiName getBuildingCategoryById
 * @apiGroup BuildingCategory
 * @apiParam {Number} id BuildingCategory unique ID.
 */
router.get('/api/building_category/:id', building_category.getOne);

/**
 * @api {post} /building_category postBuildingCategory
 * @apiName postBuildingCategory
 * @apiGroup BuildingCategory
 * @apiParam {Object} BuildingCategory object.
 * @apiParamExample {json} Request-Example:
 *     {
 *      "id":1,
 *      "id_building":1,
 *      "id_category":1
 *     }
 */
router.post('/api/building_category/', building_category.create);

/**
 * @api {put} /building_category/:id putBuildingCategory
 * @apiName putBuildingCategory
 * @apiGroup BuildingCategory
 * @apiParam {Number} id BuildingCategory unique ID.
 * @apiParam {Object} BuildingCategory object.
 * @apiParamExample {json} Request-Example:
 *     {
 *      "id":1,
 *      "id_building":1,
 *      "id_category":1
 *     }
 */
router.put('/api/building_category/:id', building_category.update);

/**
 * @api {delete} /building_category/:id deleteBuildingCategory
 * @apiName deleteBuildingCategory
 * @apiGroup BuildingCategory
 * @apiParam {Number} id BuildingCategory unique ID.
 */
router.delete('/api/building_category/:id', building_category.delete);


/********************** CATEGORY ***********************/

/**
 * @api {get} /category getCategory
 * @apiName getCategory
 * @apiGroup Category
 */
router.get('/api/category', category.getAll);

/**
 * @api {get} /category/:id getCategoryById
 * @apiName getCategoryById
 * @apiGroup Category
 * @apiParam {Number} id Category unique ID.
 */
router.get('/api/category/:id', category.getOne);

/**
 * @api {post} /category postCategory
 * @apiName postCategory
 * @apiGroup Category
 * @apiParam {Object} Category object.
 *    {
 *      "id":1,
 *      "name":"Cimento",
 *      "description":"Saco de cimento CP2 40kg",
 *      "id_category":1
 *     }
 */
router.post('/api/category/', category.create);

/**
 * @api {put} /category/:id putCategory
 * @apiName putCategory
 * @apiGroup Category
 * @apiParam {Number} id Category unique ID.
 * @apiParam {Object} Category object.
 * @apiParamExample {json} Request-Example:
 *     {
 *      "id":1,
 *      "name":"Materiais",
 *      "description":"Materiais como cimento, tijolos, ferragens, acabamento, etc",
 *      "icon":"construct"
 *     }
 */
router.put('/api/category/:id', category.update);

/**
 * @api {delete} /category/:id deleteCategory
 * @apiName deleteCategory
 * @apiGroup Category
 * @apiParam {Number} id Category unique ID.
 */
router.delete('/api/category/:id', category.delete);


/********************** ITEM ***********************/

/**
 * @api {get} /item getItem
 * @apiName getItem
 * @apiGroup Item
 */
router.get('/api/item', item.getAll);

/**
 * @api {get} /item/:id getItems
 * @apiName getItems
 * @apiGroup Item
 * @apiParam {Number} id Item unique ID.
 */
router.get('/api/item/:id', item.getOne);

/**
 * @api {get} /getItemsByCategory/:id getItemsByCategory
 * @apiName getItemsByCategory
 * @apiGroup Item
 * @apiParam {Number} id Category unique ID.
 */
router.get('/api/getItemsByCategory/:id', item.getItemsByCategory);

/**
 * @api {post} /item postItem
 * @apiName postItem
 * @apiGroup Item
 * @apiParam {Object} Item object.
 *    {
 *      "id":1,
 *      "name":"Cimento",
 *      "description":"Saco de cimento CP2 40kg",
 *      "id_category":1
 *     }
 */
router.post('/api/item/', item.create);

/**
 * @api {put} /item/:id putItem
 * @apiName putItem
 * @apiGroup Item
 * @apiParam {Number} id Item unique ID.
 * @apiParam {Object} Item object.
 *    {
 *      "id":1,
 *      "name":"Cimento",
 *      "description":"Saco de cimento CP2 40kg",
 *      "id_category":1
 *     }
 */
router.put('/api/item/:id', item.update);

/**
 * @api {delete} /item/:id getItem
 * @apiName getItem
 * @apiGroup Item
 * @apiParam {Number} id Item unique ID.
 */
router.delete('/api/item/:id', item.delete);


/********************** ENTRY ***********************/

/**
 * @api {get} /entry/:id getEntry
 * @apiName getEntry
 * @apiGroup Entry
 */
router.get('/api/entry', entry.getAll);

/**
 * @api {get} /entry/:id getEntryById
 * @apiName getEntryById
 * @apiGroup Entry
 * @apiParam {Number} id Entry unique ID.
 */
router.get('/api/entry/:id', entry.getOne);

/**
 * @api {get} /entryByCategory/:id getEntryByCategory
 * @apiName getEntryByCategory
 * @apiGroup Entry
 * @apiParam {Number} id Category unique ID.
 */
router.get('/api/entryByCategory/:id', entry.getEntriesByCategory);

/**
 * @api {get} /entryByItem/:id getEntryByItem
 * @apiName getEntryByItem
 * @apiGroup Entry
 * @apiParam {Number} id Item unique ID.
 */
router.get('/api/entryByItem/:id', entry.getEntriesByItem);

/**
 * @api {get} /entryByMonth/:month getEntryByMonth
 * @apiName getEntryByMonth
 * @apiGroup Entry
 * @apiParam {Number} month number.
 */
router.get('/api/entryByMonth/:month', entry.getEntriesByMonth);

/**
 * @api {get} /entryByItemAndCity/:id/:store_id getEntryByItemAndCity
 * @apiName getEntryByItemAndCity
 * @apiGroup Entry
 * @apiParam {Number} id Item unique ID.
 * @apiParam {Number} id Store unique ID.
 */
router.get('/api/entryByItemAndCity/:id/:city_id', entry.getEntriesByItemAndCity);

/**
 * @api {post} /entry postEntry
 * @apiName postEntry
 * @apiGroup Entry
 * @apiParam {Object} Entry object.
 * @apiParamExample {json} Request-Example:
 *     {
 *      "id":1,
 *      "description":"Casa do construtor",
 *      "date":"2017-03-09T03:00:00.000Z",
 *      "value":21,
 *      "id_item":1,
 *      "paid":1,
 *      "quantity":1,
 *      "store_id":1
 *     }
 */
router.post('/api/entry/', entry.create);

/**
 * @api {put} /entry/:id putEntry
 * @apiName putEntry
 * @apiGroup Entry
 * @apiParam {Number} id Entry unique ID.
 * @apiParam {Object} Entry object.
 * @apiParamExample {json} Request-Example:
 *     {
 *      "id":1,
 *      "description":"Casa do construtor",
 *      "date":"2017-03-09T03:00:00.000Z",
 *      "value":21,
 *      "id_item":1,
 *      "paid":1,
 *      "quantity":1,
 *      "store_id":1
 *     }
 */
router.put('/api/entry/:id', entry.update);

/**
 * @api {delete} /entry/:id deleteEntry
 * @apiName deleteEntry
 * @apiGroup Entry
 * @apiParam {Number} id Entry unique ID.
 */
router.delete('/api/entry/:id', entry.delete);


/********************** STORE ***********************/

/**
 * @api {get} /store getStore
 * @apiName getStore
 * @apiGroup Store
 */
router.get('/api/store', store.getAll);

/**
 * @api {get} /store/:id getStoreById
 * @apiName getStoreById
 * @apiGroup Store
 * @apiParam {Number} id Store unique ID.
 */
router.get('/api/store/:id', store.getOne);

/**
 * @api {post} /store postStore
 * @apiName postStore
 * @apiGroup Store
 * @apiParam {Object} Store object.
 * @apiParamExample {json} Request-Example:
 *     {
 *      "id":1,
 *      "name":"Casa do Construtor",
 *      "city_id":1
 *     }
 */
router.post('/api/store/', store.create);

/**
 * @api {put} /store/:id putStore
 * @apiName putStore
 * @apiGroup Store
 * @apiParam {Number} id Store unique ID.
 * @apiParam {Object} Store object.
 * @apiParamExample {json} Request-Example:
 *     {
 *      "id":1,
 *      "name":"Casa do Construtor",
 *      "city_id":1
 *     }
 */
router.put('/api/store/:id', store.update);

/**
 * @api {delete} /store/:id deleteStore
 * @apiName deleteStore
 * @apiGroup Store
 * @apiParam {Number} id Store unique ID.
 */
router.delete('/api/store/:id', store.delete);


/********************** CITY ***********************/

/**
 * @api {get} /city/:id getCity
 * @apiName getCity
 * @apiGroup City
 */
router.get('/api/city', city.getAll);

/**
 * @api {get} /city/:id getCityById
 * @apiName getCityById
 * @apiGroup City
 * @apiParam {Number} id City unique ID.
 */
router.get('/api/city/:id', city.getOne);

/**
 * @api {get} /city/:id getCityById
 * @apiName getCityById
 * @apiGroup City
 * @apiParam {Number} id City unique ID.
 */
router.get('/api/cityByState/:id', city.getCitiesByState);

/**
 * @api {post} /city postCity
 * @apiName postCity
 * @apiGroup City
 * @apiParam {Object} City object.
 * @apiParamExample {json} Request-Example:
 *     {
 *      "id":1,
 *      "name":"Pouso Alegre",
 *      "state_id":1
 *     }
 */
router.post('/api/city/', city.create);

/**
 * @api {put} /city/:id putCity
 * @apiName putCity
 * @apiGroup City
 * @apiParam {Number} id City unique ID.
 * @apiParam {Object} City object.
 * @apiParamExample {json} Request-Example:
 *     {
 *      "id":1,
 *      "name":"Pouso Alegre",
 *      "state_id":1
 *     }
 */
router.put('/api/city/:id', city.update);

/**
 * @api {delete} /city/:id getCity
 * @apiName getCity
 * @apiGroup City
 * @apiParam {Number} id City unique ID.
 */
router.delete('/api/city/:id', city.delete);


/********************** STATE ***********************/

/**
 * @api {get} /state getState
 * @apiName getState
 * @apiGroup State
 */
router.get('/api/state', state.getAll);

/**
 * @api {get} /state/:id getStateById
 * @apiName getStateById
 * @apiGroup State
 * @apiParam {Number} id State unique ID.
 */
router.get('/api/state/:id', state.getOne);

/**
 * @api {post} /state postState
 * @apiName postState
 * @apiGroup State
 * @apiParam {Object} State object.
 * @apiParamExample {json} Request-Example:
 *     {
 *      "id":1,
 *      "name":"Minas Gerais",
 *      "initials":"MG"
 *     }
 */
router.post('/api/state/', state.create);

/**
 * @api {put} /state/:id putState
 * @apiName putState
 * @apiGroup State
 * @apiParam {Number} id State unique ID.
 * @apiParam {Object} State object.
 * @apiParamExample {json} Request-Example:
 *     {
 *      "id":1,
 *      "name":"Minas Gerais",
 *      "initials":"MG"
 *     }
 */
router.put('/api/state/:id', state.update);

/**
 * @api {delete} /state/:id deleteState 
 * @apiName deleteState
 * @apiGroup State
 * @apiParam {Number} id State unique ID.
 */
router.delete('/api/state/:id', state.delete);

module.exports = router;
