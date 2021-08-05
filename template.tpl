___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Ecom Items to String or Sum Values",
  "description": "This Variable turns the Ecommerce Item array (e.g. [{item_id: \u0027123\u0027, quantity: 1},{item_id: \u0027234\u0027, quantity: 2}]) into a string (e.g. \u0027123|234\u0027), or sums Item Values (e.g 3).",
  "containerContexts": [
    "SERVER"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "LABEL",
    "name": "templateDescription",
    "displayName": "Turn the Item array (e.g. \u003cstrong\u003e[{item_id: \u0027123\u0027, quantity: 1},{item_id: \u0027456\u0027, quantity: 2}]\u003c/strong\u003e) into a string (e.g. \u003cstrong\u003e\u0027123|456\u0027\u003c/strong\u003e), or sums Item Values (e.g \u003cstrong\u003e3\u003c/strong\u003e)."
  },
  {
    "type": "GROUP",
    "name": "eventSelectionGroup",
    "displayName": "Select Mapping Method",
    "groupStyle": "NO_ZIPPY",
    "subParams": [
      {
        "type": "SELECT",
        "name": "selectionType",
        "displayName": "",
        "macrosInSelect": false,
        "selectItems": [
          {
            "value": "standardMapping",
            "displayValue": "GA4 Standard Ecommerce Events"
          },
          {
            "value": "customMapping",
            "displayValue": "Custom Mapping"
          }
        ],
        "simpleValueType": true,
        "alwaysInSummary": false
      },
      {
        "type": "GROUP",
        "name": "selectionStandard",
        "displayName": "Select Ecommerce Events",
        "groupStyle": "ZIPPY_OPEN",
        "subParams": [
          {
            "type": "CHECKBOX",
            "name": "add_payment_info",
            "checkboxText": "add_payment_info",
            "simpleValueType": true
          },
          {
            "type": "CHECKBOX",
            "name": "add_shipping_info",
            "checkboxText": "add_shipping_info",
            "simpleValueType": true
          },
          {
            "type": "CHECKBOX",
            "name": "add_to_cart",
            "checkboxText": "add_to_cart",
            "simpleValueType": true
          },
          {
            "type": "CHECKBOX",
            "name": "add_to_wishlist",
            "checkboxText": "add_to_wishlist",
            "simpleValueType": true
          },
          {
            "type": "CHECKBOX",
            "name": "begin_checkout",
            "checkboxText": "begin_checkout",
            "simpleValueType": true
          },
          {
            "type": "CHECKBOX",
            "name": "purchase",
            "checkboxText": "purchase",
            "simpleValueType": true
          },
          {
            "type": "CHECKBOX",
            "name": "refund",
            "checkboxText": "refund",
            "simpleValueType": true
          },
          {
            "type": "CHECKBOX",
            "name": "remove_from_cart",
            "checkboxText": "remove_from_cart",
            "simpleValueType": true
          },
          {
            "type": "CHECKBOX",
            "name": "select_item",
            "checkboxText": "select_item",
            "simpleValueType": true
          },
          {
            "type": "CHECKBOX",
            "name": "select_promotion",
            "checkboxText": "select_promotion",
            "simpleValueType": true
          },
          {
            "type": "CHECKBOX",
            "name": "view_cart",
            "checkboxText": "view_cart",
            "simpleValueType": true
          },
          {
            "type": "CHECKBOX",
            "name": "view_item",
            "checkboxText": "view_item",
            "simpleValueType": true
          },
          {
            "type": "CHECKBOX",
            "name": "view_item_list",
            "checkboxText": "view_item_list",
            "simpleValueType": true
          },
          {
            "type": "CHECKBOX",
            "name": "view_promotion",
            "checkboxText": "view_promotion",
            "simpleValueType": true
          }
        ],
        "help": "Select \u003cstrong\u003eGA4 Standard Ecommerce Events\u003c/strong\u003e that should generate the \u003cstrong\u003estring\u003c/strong\u003e or \u003cstrong\u003esum Item Values\u003c/strong\u003e.",
        "enablingConditions": [
          {
            "paramName": "selectionType",
            "paramValue": "standardMapping",
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "SIMPLE_TABLE",
        "name": "selectionCustom",
        "displayName": "Custom Mapping",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Custom Mapping Parameter",
            "name": "customParameter",
            "type": "TEXT",
            "valueHint": "addToCart",
            "selectItems": [],
            "isUnique": true,
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ],
            "macrosInSelect": false
          },
          {
            "defaultValue": "",
            "displayName": "Select Variable for Mapping",
            "name": "customParameterVariable",
            "type": "SELECT",
            "selectItems": [],
            "isUnique": false,
            "valueHint": "addToCart",
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ],
            "macrosInSelect": true
          }
        ],
        "newRowButtonText": "Add Custom Mapping",
        "enablingConditions": [
          {
            "paramName": "selectionType",
            "paramValue": "customMapping",
            "type": "EQUALS"
          }
        ],
        "help": "Type in \u003cstrong\u003eCustom Mapping Parameter\u003c/strong\u003e (e.g. \u003cstrong\u003eaddToCart\u003c/strong\u003e) and \u003cstrong\u003eSelect Variable for Mapping\u003c/strong\u003e against this parameter (e.g. \u003cstrong\u003e{{Event Name}}\u003c/strong\u003e).",
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ]
      }
    ],
    "help": "You can either map against \u003cstrong\u003eGA4 Standard Ecommerce Events\u003c/strong\u003e, or choose \u003cstrong\u003eCustom Mapping\u003c/strong\u003e to map against \u003cstrong\u003eVariables\u003c/strong\u003e."
  },
  {
    "type": "RADIO",
    "name": "itemTypeSelection",
    "displayName": "Select Item Parameter Type \u0026 Action",
    "radioItems": [
      {
        "value": "string",
        "displayValue": "Create String from Item Parameter",
        "subParams": []
      },
      {
        "value": "metric",
        "displayValue": "Sum Values from Item Parameter",
        "subParams": []
      }
    ],
    "simpleValueType": true,
    "help": "Select if you are going to \u003cstrong\u003eCreate a String\u003c/strong\u003e or \u003cstrong\u003eSum Values\u003c/strong\u003e from the \u003cstrong\u003eItem Parameter\u003c/strong\u003e."
  },
  {
    "type": "SELECT",
    "name": "itemType",
    "displayName": "Select Item Type",
    "macrosInSelect": false,
    "selectItems": [
      {
        "value": "itemStandard",
        "displayValue": "Standard Item Parameter"
      },
      {
        "value": "itemCustom",
        "displayValue": "Custom Item Parameter"
      }
    ],
    "simpleValueType": true,
    "defaultValue": "itemStandard",
    "alwaysInSummary": true,
    "help": "Select a \u003cstrong\u003eStandard Item Parameter\u003c/strong\u003e, or choose \u003cstrong\u003eCustom Item Parameter\u003c/strong\u003e and \u003cstrong\u003etype in\u003c/strong\u003e your parameter."
  },
  {
    "type": "GROUP",
    "name": "itemStringGroup",
    "displayName": "Select Item Parameter Settings",
    "groupStyle": "ZIPPY_OPEN_ON_PARAM",
    "subParams": [
      {
        "type": "SELECT",
        "name": "itemStandardString",
        "displayName": "Select Standard Item Parameter",
        "macrosInSelect": false,
        "selectItems": [
          {
            "value": "item_id",
            "displayValue": "item_id"
          },
          {
            "value": "item_name",
            "displayValue": "item_name"
          },
          {
            "value": "item_variant",
            "displayValue": "item_variant"
          },
          {
            "value": "item_brand",
            "displayValue": "item_brand"
          },
          {
            "value": "item_category",
            "displayValue": "item_category"
          },
          {
            "value": "item_category2",
            "displayValue": "item_category2"
          },
          {
            "value": "item_category3",
            "displayValue": "item_category3"
          },
          {
            "value": "item_category4",
            "displayValue": "item_category4"
          },
          {
            "value": "item_category5",
            "displayValue": "item_category5"
          },
          {
            "value": "affiliation",
            "displayValue": "affiliation"
          },
          {
            "value": "coupon",
            "displayValue": "coupon"
          },
          {
            "value": "currency",
            "displayValue": "currency"
          },
          {
            "value": "index",
            "displayValue": "index"
          },
          {
            "value": "item_list_id",
            "displayValue": "item_list_id"
          },
          {
            "value": "item_list_name",
            "displayValue": "item_list_name"
          },
          {
            "value": "location_id",
            "displayValue": "location_id"
          }
        ],
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "itemType",
            "paramValue": "itemStandard",
            "type": "EQUALS"
          }
        ],
        "help": "Select a \u003cstrong\u003eStandard Item Parameter\u003c/strong\u003e from the dropdown to \u003cstrong\u003ecreate a string\u003c/strong\u003e."
      },
      {
        "type": "TEXT",
        "name": "itemCustomString",
        "displayName": "Custom Item String Parameter",
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "itemType",
            "paramValue": "itemCustom",
            "type": "EQUALS"
          }
        ],
        "help": "Some help text",
        "valueValidators": []
      },
      {
        "type": "TEXT",
        "name": "paramDelimiter",
        "displayName": "Delimiter",
        "simpleValueType": true,
        "defaultValue": "|",
        "help": "Choose \u003cstrong\u003edelimiter\u003c/strong\u003e for separating your values in the string.",
        "valueHint": "|",
        "enablingConditions": [
          {
            "paramName": "itemTypeSelection",
            "paramValue": "string",
            "type": "EQUALS"
          }
        ],
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ]
      },
      {
        "type": "CHECKBOX",
        "name": "itemUniqueString",
        "checkboxText": "Return Unique Items",
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "itemTypeSelection",
            "paramValue": "string",
            "type": "EQUALS"
          }
        ],
        "help": "Choose if only \u003cstrong\u003eUnique Items\u003c/strong\u003e should be returned."
      }
    ],
    "enablingConditions": [
      {
        "paramName": "itemTypeSelection",
        "paramValue": "string",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "itemMetricGroup",
    "displayName": "Select Item Value Settings",
    "groupStyle": "NO_ZIPPY",
    "subParams": [
      {
        "type": "SELECT",
        "name": "itemStandardMetric",
        "displayName": "Select Item Parameter",
        "macrosInSelect": false,
        "selectItems": [
          {
            "value": "discount",
            "displayValue": "discount"
          },
          {
            "value": "price",
            "displayValue": "price"
          },
          {
            "value": "quantity",
            "displayValue": "quantity"
          }
        ],
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "itemType",
            "paramValue": "itemStandard",
            "type": "EQUALS"
          }
        ],
        "help": "Select a \u003cstrong\u003eStandard Item Parameter\u003c/strong\u003e from the dropdown to \u003cstrong\u003ecreate values\u003c/strong\u003e from."
      },
      {
        "type": "TEXT",
        "name": "itemCustomMetric",
        "displayName": "Custom Item Metric Parameter",
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "itemType",
            "paramValue": "itemCustom",
            "type": "EQUALS"
          }
        ],
        "help": "Type in a \u003cstrong\u003eCustom Item Parameter\u003c/strong\u003e from the dropdown to \u003cstrong\u003ecreate values\u003c/strong\u003e from.",
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ]
      },
      {
        "type": "CHECKBOX",
        "name": "multiplyQuantity",
        "checkboxText": "Multiply Metric with Quantity",
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "itemStandardMetric",
            "paramValue": "quantity",
            "type": "NOT_EQUALS"
          }
        ],
        "help": "Choose if the \u003cstrong\u003eMetric\u003c/strong\u003e should be \u003cstrong\u003eMultiplied\u003c/strong\u003e with \u003cstrong\u003eQuantity\u003c/strong\u003e."
      }
    ],
    "enablingConditions": [
      {
        "paramName": "itemTypeSelection",
        "paramValue": "metric",
        "type": "EQUALS"
      }
    ],
    "help": "Select a \u003cstrong\u003eStandard Item Parameter\u003c/strong\u003e, or choose \u003cstrong\u003eCustom Item Parameter\u003c/strong\u003e and \u003cstrong\u003etype in\u003c/strong\u003e your parameter."
  }
]


___SANDBOXED_JS_FOR_SERVER___

const getType = require('getType');
const getEventData = require('getEventData');
const queryPermission = require('queryPermission');
const makeTableMap = require('makeTableMap');
const makeNumber = require('makeNumber');

const keyPath = 'items';
if (queryPermission('read_event_data', keyPath)) {
  const itemsArray = getEventData(keyPath);
  
  if (getType(itemsArray) !== 'array') {
    return;
  }
  const event = getEventData('event_name');
  
  let standardMapping;
  if (data.selectionType == 'standardMapping') {
    standardMapping = {
      'add_payment_info': data.add_payment_info,
      'add_shipping_info': data.add_shipping_info,
      'add_to_cart': data.add_to_cart,
      'add_to_wishlist': data.add_to_wishlist,
      'begin_checkout': data.begin_checkout,
      'purchase': data.purchase,
      'refund': data.refund,
      'remove_from_cart': data.remove_from_cart,
      'select_item': data.select_item,
      'select_promotion': data.select_promotion,
      'view_cart': data.view_cart,
      'view_item': data.view_item,
      'view_item_list': data.view_item_list,
      'view_promotion': data.view_promotion
    };
  }
    
  let customMapping;
  if (data.selectionCustom && data.selectionType == 'customMapping') {
    data.selectionCustom.forEach((customArray) => {
      if (customArray.customParameter === customArray.customParameterVariable) {
        customMapping = customArray.customParameter;
      }
    });
  }
  const mappingResult = customMapping ? customMapping : standardMapping[event];
  
  if (mappingResult) {  
    if (data.itemTypeSelection === 'string') {
      const paramDelimiter = data.paramDelimiter;
      const itemString = data.itemStandardString ? data.itemStandardString : data.itemCustomString;
      if (data.itemUniqueString) {
        return itemsArray
          .map(obj => obj[itemString])
          .filter((value, index, self) => self.indexOf(value) === index)
          .join(paramDelimiter);
      } else {
        return itemsArray
          .map(obj => obj[itemString])
          .filter(obj => obj)
          .join(paramDelimiter);    
      }
    } else {
      const itemMetric = data.itemStandardMetric ? data.itemStandardMetric : data.itemCustomMetric;
      if (data.multiplyQuantity) {
        return itemsArray
          .reduce(function(a, b){return a + makeNumber(b[itemMetric]*(b.quantity||1));}, 0);
      } else {
        return itemsArray
          .map(obj => obj[itemMetric])
          .filter(obj => obj)
          .reduce((a, b) => a + makeNumber(b), 0);      
      }
    }
  }
}


___SERVER_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "read_event_data",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keyPatterns",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "items"
              },
              {
                "type": 1,
                "string": "event_name"
              }
            ]
          }
        },
        {
          "key": "eventDataAccess",
          "value": {
            "type": 1,
            "string": "specific"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 8/5/2021, 9:32:38 PM


