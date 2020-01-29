---
description: Extend out-of-the-box integration and use with any Entity or Form
---

# Extend Integration

Via `Settings.Customizations Customize the System` navigate to the Entity and the Form where you want to integrate telephone number formatting (see also [Out-of-the-box Integration](../solution/oob_integration.md)).

![image-20200129111711891](extend-integration.assets/image-20200129111711891.png)

Select the Form - for example *Contact - Mobile* and open *Form.Properties*.

![image-20200129110625016](extend-integration.assets/image-20200129110625016.png)

> [!NOTE]
> Microsoft is going to change UIs in 2020. All screenshot were taken in Dynamics 365 Online (Jan 2020). However.

Add the two JavaScripts as shown below to your Form Libraries. There might be other scripts already, but this does not matter. **Make sure, `platformservices.js` is listed before `activeTAPI.js`.**

![image-20191217154350529](extend-integration.assets/image-20191217154350529.png)

In addition, you need to register the function `mspro.form.onLoad` and pass execution parameters in the Form's OnLoad event.

> [!WARNING]
> All string are casse-sensitive because it is JavaScript!

![image-20200129104811752](extend-integration.assets/image-20200129104811752.png)

