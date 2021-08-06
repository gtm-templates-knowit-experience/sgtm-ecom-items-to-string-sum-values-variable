# Ecommerce Items to String or Sum Item Values - SGTM Variable

This Variable for **Google Tag Manager Server-side (SGTM)** turns the Ecommerce Item array (e.g. **[{item_id: '12', quantity: 1},{item_id: '34', quantity: 2}]**) into a string (e.g. **'12|34'**), or sums Item Values (e.g **3**). When summing values you can choose to multiply the value with quantity (e.g. **[{price: 10, quantity: 1},{price: 20, quantity: 2}]**) which will give the result **50**).

## Variable Functionality Overview
* Select Mapping Method
  * GA4 Standard Ecommerce Events
  * Custom Mapping
* Select Item Parameter Type & Action
  * Create String from Item Parameter
    * Standard Item Parameters
    * Custom Item Parameters
    * Choose Delimiter
    * Return Unique Items
  * Sum Values from Item Parameter
    * Standard Item Parameters
    * Custom Item Parameters
    * Multiply Value with Quantity Selection

## Variable Functionality in Detail
### Select Mapping Method
Selecting Mapping Method can be done using **GA4 Standard Ecommerce Events** or **Custom Mapping**.
#### Selecting GA4 Standard Ecommerce Events
Image shows how to select GA4 Standard Ecommerce Events.

![Selecting GA4 Standard Ecommerce Events](https://github.com/gtm-templates-knowit-experience/sgtm-ecom-items-to-string-sum-values-variable/blob/main/images/sgtm-ecom-items-standard-mapping.png)

#### Selecting Custom Mapping
Image shows how to do Custom Mapping.

![Selecting Custom Mapping](https://github.com/gtm-templates-knowit-experience/sgtm-ecom-items-to-string-sum-values-variable/blob/main/images/sgtm-ecom-items-custom-mapping.png)

### Create Strings from Item Parameters
Image shows how to **Create a String** from a **Custom Item Parameter**. Choosing **Standard Item Parameters** can be done using the **Select Item Type** dropdown.

![Create Strings from Item Parameters](https://github.com/gtm-templates-knowit-experience/sgtm-ecom-items-to-string-sum-values-variable/blob/main/images/sgtm-ecom-items-create-string-settings.png)

### Sum Item Values from Item Parameters
Image shows how to **Sum Item Values** from **Standard Item Parameter** using the **Select Item Type** dropdown. You can also use **Custom Item Parameters** to sum values.

![Sum Values from Item Parameters](https://github.com/gtm-templates-knowit-experience/sgtm-ecom-items-to-string-sum-values-variable/blob/main/images/sgtm-ecom-items-sum-values-settings.png)

## Images of the Variable
Images shows how to **Create Strings** using **Custom Mapping** and **Custom Item Parameters**.

![Create Strings using Custom Mapping and Custom Item Parameters](https://github.com/gtm-templates-knowit-experience/sgtm-ecom-items-to-string-sum-values-variable/blob/main/images/sgtm-ecom-items-to-string-or-sum-values-custom.png)

Images shows how to **Sum Item Values** using **GA4 Standard Ecommerce Events** and **Standard Item Parameters**.

![Sum Item Values using GA4 Standard Ecommerce Events and Standard Item Parameters](https://github.com/gtm-templates-knowit-experience/sgtm-ecom-items-to-string-sum-values-variable/blob/main/images/sgtm-ecom-items-to-string-or-sum-values-standard.png)
