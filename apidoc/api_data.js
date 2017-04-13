define({ "api": [
  {
    "type": "delete",
    "url": "/building_category/:id",
    "title": "deleteBuildingCategory",
    "name": "deleteBuildingCategory",
    "group": "BuildingCategory",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "id",
            "description": "<p>BuildingCategory unique ID.</p>"
          }
        ]
      }
    },
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "BuildingCategory"
  },
  {
    "type": "get",
    "url": "/building_category/:id",
    "title": "getBuildingCategory",
    "name": "getBuildingCategory",
    "group": "BuildingCategory",
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "BuildingCategory"
  },
  {
    "type": "get",
    "url": "/building_category/:id",
    "title": "getBuildingCategoryById",
    "name": "getBuildingCategoryById",
    "group": "BuildingCategory",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "id",
            "description": "<p>BuildingCategory unique ID.</p>"
          }
        ]
      }
    },
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "BuildingCategory"
  },
  {
    "type": "post",
    "url": "/building_category",
    "title": "postBuildingCategory",
    "name": "postBuildingCategory",
    "group": "BuildingCategory",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Object",
            "optional": false,
            "field": "BuildingCategory",
            "description": "<p>object.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Request-Example:",
          "content": "{\n \"id\":1,\n \"id_building\":1,\n \"id_category\":1\n}",
          "type": "json"
        }
      ]
    },
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "BuildingCategory"
  },
  {
    "type": "put",
    "url": "/building_category/:id",
    "title": "putBuildingCategory",
    "name": "putBuildingCategory",
    "group": "BuildingCategory",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "id",
            "description": "<p>BuildingCategory unique ID.</p>"
          },
          {
            "group": "Parameter",
            "type": "Object",
            "optional": false,
            "field": "BuildingCategory",
            "description": "<p>object.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Request-Example:",
          "content": "{\n \"id\":1,\n \"id_building\":1,\n \"id_category\":1\n}",
          "type": "json"
        }
      ]
    },
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "BuildingCategory"
  },
  {
    "type": "delete",
    "url": "/building/:id",
    "title": "deleteBuilding",
    "name": "deleteBuilding",
    "group": "Building",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "id",
            "description": "<p>Building unique ID.</p>"
          }
        ]
      }
    },
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "Building"
  },
  {
    "type": "get",
    "url": "/building",
    "title": "getBuilding",
    "name": "getBuilding",
    "group": "Building",
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "Building"
  },
  {
    "type": "get",
    "url": "/building/:id",
    "title": "",
    "name": "getbBuildingById",
    "group": "Building",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "id",
            "description": "<p>Building unique ID.</p>"
          }
        ]
      }
    },
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "Building"
  },
  {
    "type": "post",
    "url": "/building",
    "title": "postbBuilding",
    "name": "postbBuilding",
    "group": "Building",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Object",
            "optional": false,
            "field": "Building",
            "description": "<p>object.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Request-Example:",
          "content": "{\n \"id\":1,\n \"name\":\"Minha Obra\",\n \"description\":\"Minha Obra\",\n \"id_user\":1,\n \"estimated_value\":100000\n}",
          "type": "json"
        }
      ]
    },
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "Building"
  },
  {
    "type": "put",
    "url": "/building/:id",
    "title": "putBuilding",
    "name": "putBuilding",
    "group": "Building",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "id",
            "description": "<p>Building unique ID.</p>"
          },
          {
            "group": "Parameter",
            "type": "Object",
            "optional": false,
            "field": "Building",
            "description": "<p>object.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Request-Example:",
          "content": "{\n \"id\":1,\n \"name\":\"Minha Obra\",\n \"description\":\"Minha Obra\",\n \"id_user\":1,\n \"estimated_value\":100000\n}",
          "type": "json"
        }
      ]
    },
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "Building"
  },
  {
    "type": "delete",
    "url": "/category/:id",
    "title": "deleteCategory",
    "name": "deleteCategory",
    "group": "Category",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "id",
            "description": "<p>Category unique ID.</p>"
          }
        ]
      }
    },
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "Category"
  },
  {
    "type": "get",
    "url": "/category",
    "title": "getCategory",
    "name": "getCategory",
    "group": "Category",
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "Category"
  },
  {
    "type": "get",
    "url": "/category/:id",
    "title": "getCategoryById",
    "name": "getCategoryById",
    "group": "Category",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "id",
            "description": "<p>Category unique ID.</p>"
          }
        ]
      }
    },
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "Category"
  },
  {
    "type": "post",
    "url": "/category",
    "title": "postCategory",
    "name": "postCategory",
    "group": "Category",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Object",
            "optional": false,
            "field": "Category",
            "description": "<p>object. { &quot;id&quot;:1, &quot;name&quot;:&quot;Cimento&quot;, &quot;description&quot;:&quot;Saco de cimento CP2 40kg&quot;, &quot;id_category&quot;:1 }</p>"
          }
        ]
      }
    },
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "Category"
  },
  {
    "type": "put",
    "url": "/category/:id",
    "title": "putCategory",
    "name": "putCategory",
    "group": "Category",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "id",
            "description": "<p>Category unique ID.</p>"
          },
          {
            "group": "Parameter",
            "type": "Object",
            "optional": false,
            "field": "Category",
            "description": "<p>object.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Request-Example:",
          "content": "{\n \"id\":1,\n \"name\":\"Materiais\",\n \"description\":\"Materiais como cimento, tijolos, ferragens, acabamento, etc\",\n \"icon\":\"construct\"\n}",
          "type": "json"
        }
      ]
    },
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "Category"
  },
  {
    "type": "get",
    "url": "/city/:id",
    "title": "getCity",
    "name": "getCity",
    "group": "City",
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "City"
  },
  {
    "type": "delete",
    "url": "/city/:id",
    "title": "getCity",
    "name": "getCity",
    "group": "City",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "id",
            "description": "<p>City unique ID.</p>"
          }
        ]
      }
    },
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "City"
  },
  {
    "type": "get",
    "url": "/city/:id",
    "title": "getCityById",
    "name": "getCityById",
    "group": "City",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "id",
            "description": "<p>City unique ID.</p>"
          }
        ]
      }
    },
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "City"
  },
  {
    "type": "get",
    "url": "/city/:id",
    "title": "getCityById",
    "name": "getCityById",
    "group": "City",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "id",
            "description": "<p>City unique ID.</p>"
          }
        ]
      }
    },
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "City"
  },
  {
    "type": "post",
    "url": "/city",
    "title": "postCity",
    "name": "postCity",
    "group": "City",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Object",
            "optional": false,
            "field": "City",
            "description": "<p>object.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Request-Example:",
          "content": "{\n \"id\":1,\n \"name\":\"Pouso Alegre\",\n \"state_id\":1\n}",
          "type": "json"
        }
      ]
    },
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "City"
  },
  {
    "type": "put",
    "url": "/city/:id",
    "title": "putCity",
    "name": "putCity",
    "group": "City",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "id",
            "description": "<p>City unique ID.</p>"
          },
          {
            "group": "Parameter",
            "type": "Object",
            "optional": false,
            "field": "City",
            "description": "<p>object.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Request-Example:",
          "content": "{\n \"id\":1,\n \"name\":\"Pouso Alegre\",\n \"state_id\":1\n}",
          "type": "json"
        }
      ]
    },
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "City"
  },
  {
    "type": "delete",
    "url": "/credential/:id",
    "title": "deleteCredential",
    "name": "deleteCredential",
    "group": "Credential",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "id",
            "description": "<p>Credential unique ID.</p>"
          },
          {
            "group": "Parameter",
            "type": "Object",
            "optional": false,
            "field": "Credential",
            "description": "<p>object.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Request-Example:",
          "content": "{\n \"id\":1,\n  \"username\":\"admin\",\n  \"password\":\"admin\"\n }",
          "type": "json"
        }
      ]
    },
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "Credential"
  },
  {
    "type": "get",
    "url": "/credential",
    "title": "getCredential",
    "name": "getCredential",
    "group": "Credential",
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "Credential"
  },
  {
    "type": "get",
    "url": "/credential/:id",
    "title": "getCredentialById",
    "name": "getCredentialById",
    "group": "Credential",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "id",
            "description": "<p>Credential unique ID.</p>"
          }
        ]
      }
    },
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "Credential"
  },
  {
    "type": "post",
    "url": "/credential",
    "title": "postCredential",
    "name": "postCredential",
    "group": "Credential",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Object",
            "optional": false,
            "field": "Credential",
            "description": "<p>object.</p>"
          }
        ]
      }
    },
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "Credential"
  },
  {
    "type": "put",
    "url": "/credential/:id",
    "title": "putCredential",
    "group": "Credential",
    "name": "putCredential",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Object",
            "optional": false,
            "field": "Credential",
            "description": "<p>object.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Request-Example:",
          "content": "{\n \"id\":1,\n  \"username\":\"admin\",\n  \"password\":\"admin\"\n }",
          "type": "json"
        }
      ]
    },
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "Credential"
  },
  {
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "optional": false,
            "field": "varname1",
            "description": "<p>No type.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "varname2",
            "description": "<p>With type.</p>"
          }
        ]
      }
    },
    "type": "",
    "url": "",
    "version": "0.0.0",
    "filename": "./apidoc/main.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_apidoc_main_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_apidoc_main_js",
    "name": ""
  },
  {
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "optional": false,
            "field": "varname1",
            "description": "<p>No type.</p>"
          },
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "varname2",
            "description": "<p>With type.</p>"
          }
        ]
      }
    },
    "type": "",
    "url": "",
    "version": "0.0.0",
    "filename": "./doc/main.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_doc_main_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_doc_main_js",
    "name": ""
  },
  {
    "type": "delete",
    "url": "/entry/:id",
    "title": "deleteEntry",
    "name": "deleteEntry",
    "group": "Entry",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "id",
            "description": "<p>Entry unique ID.</p>"
          }
        ]
      }
    },
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "Entry"
  },
  {
    "type": "get",
    "url": "/entry/:id",
    "title": "getEntry",
    "name": "getEntry",
    "group": "Entry",
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "Entry"
  },
  {
    "type": "get",
    "url": "/entryByCategory/:id",
    "title": "getEntryByCategory",
    "name": "getEntryByCategory",
    "group": "Entry",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "id",
            "description": "<p>Category unique ID.</p>"
          }
        ]
      }
    },
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "Entry"
  },
  {
    "type": "get",
    "url": "/entry/:id",
    "title": "getEntryById",
    "name": "getEntryById",
    "group": "Entry",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "id",
            "description": "<p>Entry unique ID.</p>"
          }
        ]
      }
    },
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "Entry"
  },
  {
    "type": "get",
    "url": "/entryByItem/:id",
    "title": "getEntryByItem",
    "name": "getEntryByItem",
    "group": "Entry",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "id",
            "description": "<p>Item unique ID.</p>"
          }
        ]
      }
    },
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "Entry"
  },
  {
    "type": "get",
    "url": "/entryByMonth/:month",
    "title": "getEntryByMonth",
    "name": "getEntryByMonth",
    "group": "Entry",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "month",
            "description": "<p>number.</p>"
          }
        ]
      }
    },
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "Entry"
  },
  {
    "type": "post",
    "url": "/entry",
    "title": "postEntry",
    "name": "postEntry",
    "group": "Entry",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Object",
            "optional": false,
            "field": "Entry",
            "description": "<p>object.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Request-Example:",
          "content": "{\n \"id\":1,\n \"description\":\"Casa do construtor\",\n \"date\":\"2017-03-09T03:00:00.000Z\",\n \"value\":21,\n \"id_item\":1,\n \"paid\":1,\n \"quantity\":1,\n \"store_id\":1\n}",
          "type": "json"
        }
      ]
    },
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "Entry"
  },
  {
    "type": "put",
    "url": "/entry/:id",
    "title": "putEntry",
    "name": "putEntry",
    "group": "Entry",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "id",
            "description": "<p>Entry unique ID.</p>"
          },
          {
            "group": "Parameter",
            "type": "Object",
            "optional": false,
            "field": "Entry",
            "description": "<p>object.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Request-Example:",
          "content": "{\n \"id\":1,\n \"description\":\"Casa do construtor\",\n \"date\":\"2017-03-09T03:00:00.000Z\",\n \"value\":21,\n \"id_item\":1,\n \"paid\":1,\n \"quantity\":1,\n \"store_id\":1\n}",
          "type": "json"
        }
      ]
    },
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "Entry"
  },
  {
    "type": "delete",
    "url": "/item/:id",
    "title": "getItem",
    "name": "getItem",
    "group": "Item",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "id",
            "description": "<p>Item unique ID.</p>"
          }
        ]
      }
    },
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "Item"
  },
  {
    "type": "get",
    "url": "/item",
    "title": "getItem",
    "name": "getItem",
    "group": "Item",
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "Item"
  },
  {
    "type": "get",
    "url": "/item/:id",
    "title": "getItems",
    "name": "getItems",
    "group": "Item",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "id",
            "description": "<p>Item unique ID.</p>"
          }
        ]
      }
    },
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "Item"
  },
  {
    "type": "get",
    "url": "/getItemsByCategory/:id",
    "title": "getItemsByCategory",
    "name": "getItemsByCategory",
    "group": "Item",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "id",
            "description": "<p>Category unique ID.</p>"
          }
        ]
      }
    },
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "Item"
  },
  {
    "type": "post",
    "url": "/item",
    "title": "postItem",
    "name": "postItem",
    "group": "Item",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Object",
            "optional": false,
            "field": "Item",
            "description": "<p>object. { &quot;id&quot;:1, &quot;name&quot;:&quot;Cimento&quot;, &quot;description&quot;:&quot;Saco de cimento CP2 40kg&quot;, &quot;id_category&quot;:1 }</p>"
          }
        ]
      }
    },
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "Item"
  },
  {
    "type": "put",
    "url": "/item/:id",
    "title": "putItem",
    "name": "putItem",
    "group": "Item",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "id",
            "description": "<p>Item unique ID.</p>"
          },
          {
            "group": "Parameter",
            "type": "Object",
            "optional": false,
            "field": "Item",
            "description": "<p>object. { &quot;id&quot;:1, &quot;name&quot;:&quot;Cimento&quot;, &quot;description&quot;:&quot;Saco de cimento CP2 40kg&quot;, &quot;id_category&quot;:1 }</p>"
          }
        ]
      }
    },
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "Item"
  },
  {
    "type": "delete",
    "url": "/state/:id",
    "title": "deleteState",
    "name": "deleteState",
    "group": "State",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "id",
            "description": "<p>State unique ID.</p>"
          }
        ]
      }
    },
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "State"
  },
  {
    "type": "get",
    "url": "/state",
    "title": "getState",
    "name": "getState",
    "group": "State",
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "State"
  },
  {
    "type": "get",
    "url": "/state/:id",
    "title": "getStateById",
    "name": "getStateById",
    "group": "State",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "id",
            "description": "<p>State unique ID.</p>"
          }
        ]
      }
    },
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "State"
  },
  {
    "type": "post",
    "url": "/state",
    "title": "postState",
    "name": "postState",
    "group": "State",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Object",
            "optional": false,
            "field": "State",
            "description": "<p>object.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Request-Example:",
          "content": "{\n \"id\":1,\n \"name\":\"Minas Gerais\",\n \"initials\":\"MG\"\n}",
          "type": "json"
        }
      ]
    },
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "State"
  },
  {
    "type": "put",
    "url": "/state/:id",
    "title": "putState",
    "name": "putState",
    "group": "State",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "id",
            "description": "<p>State unique ID.</p>"
          },
          {
            "group": "Parameter",
            "type": "Object",
            "optional": false,
            "field": "State",
            "description": "<p>object.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Request-Example:",
          "content": "{\n \"id\":1,\n \"name\":\"Minas Gerais\",\n \"initials\":\"MG\"\n}",
          "type": "json"
        }
      ]
    },
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "State"
  },
  {
    "type": "delete",
    "url": "/store/:id",
    "title": "deleteStore",
    "name": "deleteStore",
    "group": "Store",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "id",
            "description": "<p>Store unique ID.</p>"
          }
        ]
      }
    },
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "Store"
  },
  {
    "type": "get",
    "url": "/store",
    "title": "getStore",
    "name": "getStore",
    "group": "Store",
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "Store"
  },
  {
    "type": "get",
    "url": "/store/:id",
    "title": "getStoreById",
    "name": "getStoreById",
    "group": "Store",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "id",
            "description": "<p>Store unique ID.</p>"
          }
        ]
      }
    },
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "Store"
  },
  {
    "type": "post",
    "url": "/store",
    "title": "postStore",
    "name": "postStore",
    "group": "Store",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Object",
            "optional": false,
            "field": "Store",
            "description": "<p>object.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Request-Example:",
          "content": "{\n \"id\":1,\n \"name\":\"Casa do Construtor\",\n \"city_id\":1\n}",
          "type": "json"
        }
      ]
    },
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "Store"
  },
  {
    "type": "put",
    "url": "/store/:id",
    "title": "putStore",
    "name": "putStore",
    "group": "Store",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "id",
            "description": "<p>Store unique ID.</p>"
          },
          {
            "group": "Parameter",
            "type": "Object",
            "optional": false,
            "field": "Store",
            "description": "<p>object.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Request-Example:",
          "content": "{\n \"id\":1,\n \"name\":\"Casa do Construtor\",\n \"city_id\":1\n}",
          "type": "json"
        }
      ]
    },
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "Store"
  },
  {
    "type": "delete",
    "url": "/user/:id",
    "title": "deleteUser",
    "name": "deleteUser",
    "group": "User",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "id",
            "description": "<p>User unique ID</p>"
          }
        ]
      }
    },
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "User"
  },
  {
    "type": "get",
    "url": "/user",
    "title": "getUser",
    "name": "getUser",
    "group": "User",
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "User"
  },
  {
    "type": "get",
    "url": "/user/:id",
    "title": "getUserById",
    "name": "getUserById",
    "group": "User",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "id",
            "description": "<p>User unique ID</p>"
          }
        ]
      }
    },
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "User"
  },
  {
    "type": "post",
    "url": "/user",
    "title": "postUser",
    "name": "postUser",
    "group": "User",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Object",
            "optional": false,
            "field": "User",
            "description": "<p>object.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Request-Example:",
          "content": "{\n \"id\":1,\n  \"name\":\"Admin\",\n  \"email\":\"admin@admin\",\n  \"id_credentials\":1\n}",
          "type": "json"
        }
      ]
    },
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "User"
  },
  {
    "type": "put",
    "url": "/user/:id",
    "title": "putUser",
    "name": "putUser",
    "group": "User",
    "parameter": {
      "fields": {
        "Parameter": [
          {
            "group": "Parameter",
            "type": "Number",
            "optional": false,
            "field": "id",
            "description": "<p>User unique ID.</p>"
          },
          {
            "group": "Parameter",
            "type": "Object",
            "optional": false,
            "field": "User",
            "description": "<p>object.</p>"
          }
        ]
      },
      "examples": [
        {
          "title": "Request-Example:",
          "content": "{\n \"id\":1,\n  \"name\":\"Admin\",\n  \"email\":\"admin@admin\",\n  \"id_credentials\":1\n}",
          "type": "json"
        }
      ]
    },
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "User"
  }
] });
