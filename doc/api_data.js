define({ "api": [
  {
    "type": "delete",
    "url": "/building_category/:id",
    "title": "",
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
    "title": "",
    "name": "getBuildingCategory",
    "group": "BuildingCategory",
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "BuildingCategory"
  },
  {
    "type": "get",
    "url": "/building_category/:id",
    "title": "",
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
    "title": "",
    "name": "postBuildingCategory",
    "group": "BuildingCategory",
    "parameter": {
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
    "title": "",
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
          }
        ]
      }
    },
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "BuildingCategory"
  },
  {
    "type": "delete",
    "url": "/building/:id",
    "title": "",
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
    "title": "",
    "name": "getbBuilding",
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
    "title": "",
    "name": "postbBuilding",
    "group": "Building",
    "parameter": {
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
    "title": "",
    "name": "putbBuilding",
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
    "type": "delete",
    "url": "/category/:id",
    "title": "",
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
    "title": "",
    "name": "getCategory",
    "group": "Category",
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "Category"
  },
  {
    "type": "get",
    "url": "/category/:id",
    "title": "",
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
    "title": "",
    "name": "postCategory",
    "group": "Category",
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "Category"
  },
  {
    "type": "put",
    "url": "/category/:id",
    "title": "",
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
    "type": "delete",
    "url": "/city/:id",
    "title": "",
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
    "title": "",
    "name": "getCity",
    "group": "City",
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "City"
  },
  {
    "type": "get",
    "url": "/city/:id",
    "title": "",
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
    "title": "",
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
    "title": "",
    "name": "postCity",
    "group": "City",
    "parameter": {
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
    "title": "",
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
          }
        ]
      }
    },
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "City"
  },
  {
    "type": "delete",
    "url": "/credential/:id",
    "title": "",
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
          }
        ]
      }
    },
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "Credential"
  },
  {
    "type": "get",
    "url": "/credential",
    "title": "",
    "name": "getCredential",
    "group": "Credential",
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "Credential"
  },
  {
    "type": "get",
    "url": "/credential/:id",
    "title": "",
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
    "type": "post",
    "url": "/credential",
    "title": "",
    "name": "postCredential",
    "group": "Credential",
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "Credential"
  },
  {
    "type": "put",
    "url": "/credential/:id",
    "title": "",
    "group": "Credential",
    "name": "putCredential",
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
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/body-parser/lib/read.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_body_parser_lib_read_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_body_parser_lib_read_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/body-parser/lib/types/json.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_body_parser_lib_types_json_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_body_parser_lib_types_json_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "public",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/body-parser/lib/types/raw.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_body_parser_lib_types_raw_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_body_parser_lib_types_raw_js",
    "name": "Public"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/body-parser/lib/types/text.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_body_parser_lib_types_text_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_body_parser_lib_types_text_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "public",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/body-parser/lib/types/text.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_body_parser_lib_types_text_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_body_parser_lib_types_text_js",
    "name": "Public"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/body-parser/lib/types/urlencoded.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_body_parser_lib_types_urlencoded_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_body_parser_lib_types_urlencoded_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/body-parser/lib/types/urlencoded.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_body_parser_lib_types_urlencoded_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_body_parser_lib_types_urlencoded_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/body-parser/lib/types/urlencoded.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_body_parser_lib_types_urlencoded_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_body_parser_lib_types_urlencoded_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/content-disposition/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_content_disposition_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_content_disposition_index_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/content-disposition/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_content_disposition_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_content_disposition_index_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/content-disposition/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_content_disposition_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_content_disposition_index_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/content-disposition/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_content_disposition_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_content_disposition_index_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/content-disposition/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_content_disposition_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_content_disposition_index_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/content-disposition/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_content_disposition_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_content_disposition_index_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/content-disposition/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_content_disposition_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_content_disposition_index_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/content-disposition/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_content_disposition_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_content_disposition_index_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/content-disposition/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_content_disposition_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_content_disposition_index_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "public",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/content-disposition/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_content_disposition_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_content_disposition_index_js",
    "name": "Public"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/cookie-signature/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_cookie_signature_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_cookie_signature_index_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/cookie-signature/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_cookie_signature_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_cookie_signature_index_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/debug/src/browser.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_debug_src_browser_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_debug_src_browser_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/debug/src/browser.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_debug_src_browser_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_debug_src_browser_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/debug/src/browser.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_debug_src_browser_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_debug_src_browser_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "public",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/debug/src/browser.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_debug_src_browser_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_debug_src_browser_js",
    "name": "Public"
  },
  {
    "type": "",
    "url": "public",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/debug/src/browser.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_debug_src_browser_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_debug_src_browser_js",
    "name": "Public"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/debug/src/debug.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_debug_src_debug_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_debug_src_debug_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/debug/src/debug.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_debug_src_debug_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_debug_src_debug_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "public",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/debug/src/debug.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_debug_src_debug_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_debug_src_debug_js",
    "name": "Public"
  },
  {
    "type": "",
    "url": "public",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/debug/src/debug.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_debug_src_debug_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_debug_src_debug_js",
    "name": "Public"
  },
  {
    "type": "",
    "url": "public",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/debug/src/debug.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_debug_src_debug_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_debug_src_debug_js",
    "name": "Public"
  },
  {
    "type": "",
    "url": "public",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/debug/src/debug.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_debug_src_debug_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_debug_src_debug_js",
    "name": "Public"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/debug/src/node.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_debug_src_node_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_debug_src_node_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/debug/src/node.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_debug_src_node_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_debug_src_node_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "public",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/debug/src/node.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_debug_src_node_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_debug_src_node_js",
    "name": "Public"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/etag/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_etag_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_etag_index_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "public",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/express/lib/express.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_express_lib_express_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_express_lib_express_js",
    "name": "Public"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/express/lib/middleware/init.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_express_lib_middleware_init_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_express_lib_middleware_init_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "public",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/express/lib/middleware/query.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_express_lib_middleware_query_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_express_lib_middleware_query_js",
    "name": "Public"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/express/lib/router/layer.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_express_lib_router_layer_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_express_lib_router_layer_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/express/lib/router/layer.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_express_lib_router_layer_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_express_lib_router_layer_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/express/lib/router/layer.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_express_lib_router_layer_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_express_lib_router_layer_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "public",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/express/lib/router/route.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_express_lib_router_route_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_express_lib_router_route_js",
    "name": "Public"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/express/lib/utils.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_express_lib_utils_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_express_lib_utils_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/express/lib/utils.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_express_lib_utils_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_express_lib_utils_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/express/lib/utils.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_express_lib_utils_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_express_lib_utils_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/express/lib/utils.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_express_lib_utils_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_express_lib_utils_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/express/lib/utils.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_express_lib_utils_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_express_lib_utils_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/express/lib/utils.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_express_lib_utils_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_express_lib_utils_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/express/lib/utils.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_express_lib_utils_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_express_lib_utils_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/express/lib/utils.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_express_lib_utils_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_express_lib_utils_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/express/lib/utils.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_express_lib_utils_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_express_lib_utils_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/express/lib/utils.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_express_lib_utils_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_express_lib_utils_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/express/lib/utils.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_express_lib_utils_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_express_lib_utils_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/express/lib/utils.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_express_lib_utils_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_express_lib_utils_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/express/lib/utils.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_express_lib_utils_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_express_lib_utils_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/express/lib/utils.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_express_lib_utils_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_express_lib_utils_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "public",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/express-myconnection/lib/express-myconnection.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_express_myconnection_lib_express_myconnection_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_express_myconnection_lib_express_myconnection_js",
    "name": "Public"
  },
  {
    "type": "",
    "url": "public",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/forwarded/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_forwarded_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_forwarded_index_js",
    "name": "Public"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/isarray/build/build.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_isarray_build_build_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_isarray_build_build_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/isarray/build/build.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_isarray_build_build_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_isarray_build_build_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/isarray/build/build.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_isarray_build_build_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_isarray_build_build_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/isarray/build/build.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_isarray_build_build_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_isarray_build_build_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/isarray/build/build.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_isarray_build_build_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_isarray_build_build_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "public",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/isarray/build/build.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_isarray_build_build_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_isarray_build_build_js",
    "name": "Public"
  },
  {
    "type": "",
    "url": "public",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/jwt-simple/lib/jwt.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_jwt_simple_lib_jwt_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_jwt_simple_lib_jwt_js",
    "name": "Public"
  },
  {
    "type": "",
    "url": "public",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/jwt-simple/lib/jwt.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_jwt_simple_lib_jwt_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_jwt_simple_lib_jwt_js",
    "name": "Public"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/media-typer/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_media_typer_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_media_typer_index_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/media-typer/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_media_typer_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_media_typer_index_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/media-typer/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_media_typer_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_media_typer_index_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "public",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/media-typer/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_media_typer_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_media_typer_index_js",
    "name": "Public"
  },
  {
    "type": "",
    "url": "public",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/media-typer/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_media_typer_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_media_typer_index_js",
    "name": "Public"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/ms/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_ms_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_ms_index_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/ms/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_ms_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_ms_index_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/ms/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_ms_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_ms_index_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "public",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/ms/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_ms_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_ms_index_js",
    "name": "Public"
  },
  {
    "type": "",
    "url": "public",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/on-headers/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_on_headers_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_on_headers_index_js",
    "name": "Public"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/parseurl/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_parseurl_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_parseurl_index_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/parseurl/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_parseurl_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_parseurl_index_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "public",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/parseurl/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_parseurl_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_parseurl_index_js",
    "name": "Public"
  },
  {
    "type": "",
    "url": "public",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/parseurl/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_parseurl_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_parseurl_index_js",
    "name": "Public"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/path-to-regexp/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_path_to_regexp_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_path_to_regexp_index_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/proxy-addr/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_proxy_addr_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_proxy_addr_index_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/proxy-addr/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_proxy_addr_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_proxy_addr_index_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/proxy-addr/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_proxy_addr_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_proxy_addr_index_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/proxy-addr/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_proxy_addr_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_proxy_addr_index_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/proxy-addr/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_proxy_addr_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_proxy_addr_index_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/proxy-addr/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_proxy_addr_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_proxy_addr_index_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/proxy-addr/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_proxy_addr_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_proxy_addr_index_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/proxy-addr/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_proxy_addr_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_proxy_addr_index_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "public",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/proxy-addr/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_proxy_addr_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_proxy_addr_index_js",
    "name": "Public"
  },
  {
    "type": "",
    "url": "public",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/proxy-addr/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_proxy_addr_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_proxy_addr_index_js",
    "name": "Public"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/send/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_send_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_send_index_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/send/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_send_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_send_index_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/send/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_send_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_send_index_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/send/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_send_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_send_index_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/send/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_send_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_send_index_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/send/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_send_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_send_index_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/send/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_send_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_send_index_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/send/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_send_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_send_index_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/send/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_send_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_send_index_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/send/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_send_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_send_index_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/send/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_send_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_send_index_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/send/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_send_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_send_index_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/send/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_send_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_send_index_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "public",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/send/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_send_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_send_index_js",
    "name": "Public"
  },
  {
    "type": "",
    "url": "public",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/send/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_send_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_send_index_js",
    "name": "Public"
  },
  {
    "type": "",
    "url": "public",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/send/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_send_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_send_index_js",
    "name": "Public"
  },
  {
    "type": "",
    "url": "public",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/send/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_send_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_send_index_js",
    "name": "Public"
  },
  {
    "type": "",
    "url": "public",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/send/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_send_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_send_index_js",
    "name": "Public"
  },
  {
    "type": "",
    "url": "public",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/send/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_send_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_send_index_js",
    "name": "Public"
  },
  {
    "type": "",
    "url": "public",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/send/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_send_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_send_index_js",
    "name": "Public"
  },
  {
    "type": "",
    "url": "public",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/utils-merge/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_utils_merge_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_utils_merge_index_js",
    "name": "Public"
  },
  {
    "type": "",
    "url": "private",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/vary/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_vary_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_vary_index_js",
    "name": "Private"
  },
  {
    "type": "",
    "url": "public",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/vary/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_vary_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_vary_index_js",
    "name": "Public"
  },
  {
    "type": "",
    "url": "public",
    "title": "",
    "version": "0.0.0",
    "filename": "./node_modules/vary/index.js",
    "group": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_vary_index_js",
    "groupTitle": "E__Crislaine_P_s_TCC_App_myBuildingTCCCrisAPI_node_modules_vary_index_js",
    "name": "Public"
  },
  {
    "type": "delete",
    "url": "/entry/:id",
    "title": "",
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
    "title": "",
    "name": "getEntry",
    "group": "Entry",
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "Entry"
  },
  {
    "type": "get",
    "url": "/entryByCategory/:id",
    "title": "",
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
    "title": "",
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
    "title": "",
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
    "title": "",
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
    "title": "",
    "name": "postEntry",
    "group": "Entry",
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "Entry"
  },
  {
    "type": "put",
    "url": "/entry/:id",
    "title": "",
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
    "type": "get",
    "url": "/item",
    "title": "",
    "name": "getItem",
    "group": "Item",
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "Item"
  },
  {
    "type": "delete",
    "url": "/item/:id",
    "title": "",
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
    "url": "/item/:id",
    "title": "",
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
    "title": "",
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
    "title": "",
    "name": "postItem",
    "group": "Item",
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "Item"
  },
  {
    "type": "put",
    "url": "/item/:id",
    "title": "",
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
          }
        ]
      },
      "examples": [
        {
          "title": "Request-Example:",
          "content": "{\n \"id\":1,\n \"name\":\"Cimento\",\n \"description\":\"Saco de cimento CP2 40kg\",\n \"id_category\":1\n}",
          "type": "json"
        }
      ]
    },
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "Item"
  },
  {
    "type": "delete",
    "url": "/state/:id",
    "title": "",
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
    "title": "",
    "name": "getState",
    "group": "State",
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "State"
  },
  {
    "type": "get",
    "url": "/state/:id",
    "title": "",
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
    "title": "",
    "name": "postState",
    "group": "State",
    "parameter": {
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
    "title": "",
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
          }
        ]
      }
    },
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "State"
  },
  {
    "type": "delete",
    "url": "/store/:id",
    "title": "",
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
    "title": "",
    "name": "getStore",
    "group": "Store",
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "Store"
  },
  {
    "type": "get",
    "url": "/store/:id",
    "title": "",
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
    "title": "",
    "name": "postStore",
    "group": "Store",
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "Store"
  },
  {
    "type": "put",
    "url": "/store/:id",
    "title": "",
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
    "title": "",
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
    "title": "",
    "name": "getUser",
    "group": "User",
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "User"
  },
  {
    "type": "get",
    "url": "/user/:id",
    "title": "",
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
    "title": "",
    "name": "postUser",
    "group": "User",
    "parameter": {
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
    "title": "",
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
            "description": "<p>User unique ID</p>"
          }
        ]
      }
    },
    "version": "0.0.0",
    "filename": "./routes/index.js",
    "groupTitle": "User"
  }
] });
