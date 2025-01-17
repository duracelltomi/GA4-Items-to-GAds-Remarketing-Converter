﻿___TERMS_OF_SERVICE___

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
  "displayName": "GA4 Items to GAds Dynamic Remarketing Converter",
  "description": "This variable template easily converts GA4 Items structure to the new GAds Remarketing event data and the old GAds Remarketing parameters (ecomm_xxx)",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "SELECT",
    "name": "remarketingType",
    "displayName": "Type",
    "selectItems": [
      {
        "value": "event_data",
        "displayValue": "Event Data (new)"
      },
      {
        "value": "custom_parameters",
        "displayValue": "Custom Parameters (old - ecomm_XXX)"
      }
    ],
    "simpleValueType": true,
    "defaultValue": "event_data",
    "help": "You can choose the new dynamic remarketing with Event Data or the old dynamic remarketing with custom parameters"
  },
  {
    "type": "GROUP",
    "name": "remarketingParameters",
    "displayName": "Event Type and Parameters",
    "groupStyle": "ZIPPY_OPEN",
    "subParams": [
      {
        "type": "SELECT",
        "name": "event_type",
        "displayName": "Event Type",
        "selectItems": [
          {
            "value": "event_value",
            "displayValue": "Event Value"
          },
          {
            "value": "event_items",
            "displayValue": "Event Items"
          }
        ],
        "simpleValueType": true,
        "help": "The Event Value is the total value of the products or services of GA4 items."
      },
      {
        "type": "SELECT",
        "name": "event_data",
        "displayName": "google_business_vertical",
        "macrosInSelect": true,
        "selectItems": [
          {
            "value": "flights",
            "displayValue": "flights"
          },
          {
            "value": "hotels",
            "displayValue": "hotels"
          },
          {
            "value": "retail",
            "displayValue": "retail"
          },
          {
            "value": "education",
            "displayValue": "education"
          },
          {
            "value": "hotel_rental",
            "displayValue": "hotel_rental"
          },
          {
            "value": "jobs",
            "displayValue": "jobs"
          },
          {
            "value": "local",
            "displayValue": "local"
          },
          {
            "value": "real_estate",
            "displayValue": "real_estate"
          },
          {
            "value": "travel",
            "displayValue": "travel"
          },
          {
            "value": "custom",
            "displayValue": "custom"
          }
        ],
        "simpleValueType": true,
        "defaultValue": "retail",
        "help": "\u003ca href\u003d\"https://support.google.com/google-ads/answer/7305793\" target\u003d\"_blank\"\u003eSee here for all information\u003c/a\u003e",
        "enablingConditions": [
          {
            "paramName": "event_type",
            "paramValue": "event_items",
            "type": "EQUALS"
          }
        ]
      }
    ],
    "enablingConditions": [
      {
        "paramName": "remarketingType",
        "paramValue": "event_data",
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "CHECKBOX",
    "name": "use_datalayer",
    "checkboxText": "Use Data Layer (GA4 Items structure)",
    "simpleValueType": true,
    "alwaysInSummary": true,
    "defaultValue": true,
    "subParams": [
      {
        "type": "SELECT",
        "name": "alternative_input",
        "displayName": "Read Data from Variable",
        "macrosInSelect": true,
        "selectItems": [],
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "use_datalayer",
            "paramValue": true,
            "type": "NOT_EQUALS"
          }
        ]
      }
    ],
    "help": "You can use \u003ca href\u003d\"https://tagmanager.google.com/gallery/#/owners/matteo-zambon-gtm/templates/EEC-dataLayer-Builder-for-GA4\" target\u003d\"_blank\"\u003eEEC dataLayer Builder for GA4\u003c/a\u003e variable if you use Google Universal Analytics ecommerce object"
  },
  {
    "type": "CHECKBOX",
    "name": "use_default_events",
    "checkboxText": "Use GA4 default events",
    "simpleValueType": true,
    "alwaysInSummary": true,
    "defaultValue": true,
    "subParams": [
      {
        "type": "SELECT",
        "name": "alternative_eventName",
        "displayName": "Read Data from Variable",
        "macrosInSelect": true,
        "selectItems": [],
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "use_default_events",
            "paramValue": true,
            "type": "NOT_EQUALS"
          }
        ]
      }
    ],
    "help": "You can use \u003ca href\u003d\"https://tagmanager.google.com/gallery/#/owners/matteo-zambon-gtm/templates/EEC-dataLayer-Builder-for-GA4\" target\u003d\"_blank\"\u003eEEC dataLayer Builder for GA4\u003c/a\u003e variable if you use Google Universal Analytics ecommerce object"
  },
  {
    "type": "CHECKBOX",
    "name": "use_default_purchase_value",
    "checkboxText": "Use GA4 default purchase value",
    "simpleValueType": true,
    "alwaysInSummary": true,
    "defaultValue": true,
    "subParams": [
      {
        "type": "SELECT",
        "name": "overwrite_purchase_value",
        "displayName": "Read Data from Variable",
        "macrosInSelect": true,
        "selectItems": [],
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "use_default_purchase_value",
            "paramValue": true,
            "type": "NOT_EQUALS"
          }
        ]
      }
    ],
    "help": "You can overwrite purchase value (use this only if you have GA3 dataLayer structure)"
  },
  {
    "type": "CHECKBOX",
    "name": "use_default_purchase_order_id",
    "checkboxText": "Use GA4 default purchase order id",
    "simpleValueType": true,
    "alwaysInSummary": true,
    "defaultValue": true,
    "subParams": [
      {
        "type": "SELECT",
        "name": "overwrite_purchase_order_id",
        "displayName": "Read Data from Variable",
        "macrosInSelect": true,
        "selectItems": [],
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "use_default_purchase_order_id",
            "paramValue": true,
            "type": "NOT_EQUALS"
          }
        ]
      }
    ],
    "help": "You can overwrite purchase order id(use this only if you have GA3 dataLayer structure)",
    "enablingConditions": [
      {
        "paramName": "remarketingType",
        "paramValue": "custom_parameters",
        "type": "EQUALS"
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const dl = require('copyFromDataLayer');
const Math = require('Math');
const makeInteger = require('makeInteger');
const makeNumber = require('makeNumber');
const ga4Events = ['view_item_list', 'select_item', 'view_item', 'remove_from_cart', 'add_to_cart', 'add_to_wishlist', 'view_promotion', 'select_promotion', 'view_cart', 'begin_checkout', 'add_shipping_info', 'add_payment_info', 'purchase', 'refund'];

const remarketingType = data.remarketingType;
var ecommerce_items = [];
var ecommerce = [];
var event = '';
if(data.use_datalayer === false){  
  ecommerce_items = data.alternative_input;
  ecommerce = data.alternative_input;
}
else{
  ecommerce_items = dl('ecommerce', 1).items;
  ecommerce = dl('ecommerce', 1);
}

if(data.use_default_events === false){
  event = data.alternative_eventName;
}
else{
  event = dl('event');  
}

if(ga4Events.indexOf(event) >= 0){
  let gadsObj = {};    
  let totalValue;
  let prods = ecommerce_items; 
  
  //Custom Parameters (old - ecomm_XXX) 
  if (remarketingType !== 'event_data'){
    let page_type;
    
    let idList = prods.map(function(prod) {
      if(prod.hasOwnProperty('item_id')){
        return prod.item_id.toString();
      }
    });
  
	  switch (event) {
		  case 'purchase':
			page_type = 'purchase';
			break;
		  case 'view_item':
			page_type = 'product';
			break;
		  case 'select_item':
			page_type = 'product';
			break;
		  case 'add_to_cart':
			page_type = 'cart';
			break;
		  case 'view_item_list':
			page_type = 'category';
			break;
		}
	  

	  if(event === 'purchase'){
        if(data.use_default_purchase_value === false){  
		  totalValue = data.overwrite_purchase_value;
        }
        else{
      		totalValue = ecommerce.value;
        }
        if(data.use_default_purchase_order_id === false){  
		  gadsObj.order_id = data.overwrite_purchase_order_id;
        }
        else{
          	gadsObj.order_id = ecommerce.transaction_id;
    	  }
	  }
	  else{
		totalValue = prods.reduce(function(cur, acc) {
		  if (!(acc.quantity)){
			acc.quantity = 1;
		  }
		  if(acc.hasOwnProperty('price')){
			return cur + (acc.price * acc.quantity);
		  }
		}, 0);
	  }

	  let categoryList = prods.map(function(prod) {
		if(prod.hasOwnProperty('item_category')){
		  return prod.item_category.toString();
		}
	  });
	  categoryList = categoryList.filter(unique);
	  
    
    gadsObj.ecomm_prodid = idList;
    gadsObj.ecomm_pagetype = page_type;
    gadsObj.ecomm_totalvalue = Math.round(totalValue*100)/100;
    gadsObj.ecomm_category = categoryList;   
  
    return gadsObj;
  }
  else
  {
    //event_data
    ////event_value
    if (data.event_type === 'event_value'){
       if(event === 'purchase'){

        if(data.use_default_purchase_value === false){  
		  totalValue = data.overwrite_purchase_value;
        }
        else{
      		totalValue = ecommerce.value;
        }
	  }
	  else{
		totalValue = prods.reduce(function(cur, acc) {
		  if (!(acc.quantity)){
			acc.quantity = 1;
		  }
		  if(acc.hasOwnProperty('price')){
			return cur + (acc.price * acc.quantity);
		  }
		}, 0);
	  }
      return Math.round(totalValue*100)/100;
    }
    else{
    ////event_items
      let idList = prods.map(function(prod) {
        if(prod.hasOwnProperty('item_id')){
          let gadsObj = {};    
          gadsObj.id = prod.item_id.toString();
          gadsObj.google_business_vertical = data.event_data;
          return gadsObj;
        }
      });
      
      return idList;
    }
    
  }
}
else{
  return {};
}

function unique(value, index, self) {
  return self.indexOf(value) === index;
}


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "read_data_layer",
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
                "string": "event"
              },
              {
                "type": 1,
                "string": "ecommerce.*"
              }
            ]
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

Created on 6/11/2021, 5:03:51 PM


