const getType = require('getType');
const getEventData = require('getEventData');
const queryPermission = require('queryPermission');
const makeNumber = require('makeNumber');

const keyPath = 'items';
if (queryPermission('read_event_data', keyPath)) {
  const itemsArray = getEventData(keyPath);  
  if (getType(itemsArray) !== 'array') {
    return;
  }

  const event = getEventData('event_name');
  
  let standardMapping = {};
  if (data.selectionType === 'standardMapping') {
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
  if (data.selectionCustom && data.selectionType === 'customMapping') {
    data.selectionCustom.forEach((customArray) => {
      if (customArray.customParameter === customArray.customParameterVariable) {
        customMapping = customArray.customParameter;
      }
    });
  }

  const mappingResult = standardMapping[event] ? standardMapping[event] : customMapping;
  
  if (mappingResult) {  
    if (data.itemTypeSelection === 'string') {
      const paramDelimiter = data.paramDelimiter;
      const itemString = data.itemStandardString ? data.itemStandardString : data.itemCustomString;

      // Keep only present values
      const values = itemsArray
        .map(obj => obj[itemString])
        .filter(v => v != null && v !== '');

      // If nothing remains, return undefined
      if (!values.length) return;

      if (data.itemUniqueString) {
        // Dedupe while preserving order
        const unique = [];
        for (let i = 0; i < values.length; i++) {
          if (unique.indexOf(values[i]) === -1) unique.push(values[i]);
        }
        return unique.join(paramDelimiter);
      } else {
        return values.join(paramDelimiter);
      }

    } else {
      const itemMetric = data.itemStandardMetric ? data.itemStandardMetric : data.itemCustomMetric;
      if (data.multiplyQuantity) {
        return itemsArray
          .reduce((a, b) => a + makeNumber(b[itemMetric] * (b.quantity || 1)), 0);
      } else {
        return itemsArray
          .map(obj => obj[itemMetric])
          .filter(obj => obj)
          .reduce((a, b) => a + makeNumber(b), 0);
      }
    }
  }
}