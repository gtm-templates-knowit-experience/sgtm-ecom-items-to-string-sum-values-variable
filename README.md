# Ecommerce Items to String or Sum Item Values - SGTM Variable

This Variable for **Google Tag Manager Server-side (SGTM)** turns the Ecommerce Item array (e.g. **[{item_id: '12', quantity: 1},{item_id: '34', quantity: 2}]**) into a string (e.g. **'12|34'**), or sums Item Values (e.g **3**). When summing values you can choose to multiply the value with quantity (e.g. **[{price: 10, quantity: 1},{price: 20, quantity: 2}]**) which will give the result **50**).

This Template is available in the [**Google Tag Manager Template Gallery**](https://tagmanager.google.com/gallery/#/owners/gtm-templates-knowit-experience/templates/sgtm-ecom-items-to-string-sum-values-variable).

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
    * Multiply Item Value with Item Quantity

## Related Information
A similiar Variable for **Google Tag Manager (Web)** does also exist:
* [GA4 Ecommerce Items to String or Sum Item Values - Web Variable](https://github.com/gtm-templates-knowit-experience/gtm-ga4-ecom-items-to-string-sum-values-variable)

## Variable Functionality in Detail
### Select Mapping Method
Mapping can be done using **GA4 Standard Ecommerce Events** or **Custom Mapping**.

Mapping simply means that only values that are mapped should return a result.

#### Mapping using GA4 Standard Ecommerce Events
Image shows how to map using GA4 Standard Ecommerce Events.

![Selecting GA4 Standard Ecommerce Events](https://github.com/gtm-templates-knowit-experience/sgtm-ecom-items-to-string-sum-values-variable/blob/main/images/sgtm-ecom-items-standard-mapping.png)

#### Custom Mapping
Image shows how to do Custom Mapping.

* Type in the value in the **Custom Parameter Field** that should be matched against the selected **Variable**. This means the Selected **Variable** should be able to return the value in this field.
* Select **Variable** to map against.

![Selecting Custom Mapping](https://github.com/gtm-templates-knowit-experience/sgtm-ecom-items-to-string-sum-values-variable/blob/main/images/sgtm-ecom-items-custom-mapping.png)

### Create Strings from Item Parameters
Image shows how to **Create a String** from a **Custom Item Parameter**. Choosing **Standard Item Parameters** can be done using the **Select Item Type** dropdown.

In the example **Unique Items** are returned. E.g. **[{item_color: 'Blue'},{item_color: 'Red'},{item_color: 'Blue'}]** will return the result **'Blue|Red'**.

![Create Strings from Item Parameters](https://github.com/gtm-templates-knowit-experience/sgtm-ecom-items-to-string-sum-values-variable/blob/main/images/sgtm-ecom-items-create-string-settings.png)

### Sum Item Values from Item Parameters
Image shows how to **Sum Item Values** using **Standard Item Parameters**. You can also use **Custom Item Parameters** to sum values.

In this example **price** will be **multiplied** with **quantity**.

![Sum Values from Item Parameters](https://github.com/gtm-templates-knowit-experience/sgtm-ecom-items-to-string-sum-values-variable/blob/main/images/sgtm-ecom-items-sum-values-settings.png)

## Images of the Variable
Image shows how to **Create Strings** using **Custom Mapping** and **Custom Item Parameters**.

![Create Strings using Custom Mapping and Custom Item Parameters](https://github.com/gtm-templates-knowit-experience/sgtm-ecom-items-to-string-sum-values-variable/blob/main/images/sgtm-ecom-items-to-string-or-sum-values-custom.png)

Image shows how to **Sum Item Values** using **GA4 Standard Ecommerce Events** and **Standard Item Parameters**.

![Sum Item Values using GA4 Standard Ecommerce Events and Standard Item Parameters](https://github.com/gtm-templates-knowit-experience/sgtm-ecom-items-to-string-sum-values-variable/blob/main/images/sgtm-ecom-items-to-string-or-sum-values-standard.png)
