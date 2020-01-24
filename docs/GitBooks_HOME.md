---
description: activeTAPI - Technical and background information
---

# activeTAPI Docs

## activeTAPI for Dynamics 365 & Power Apps

_activeTAPI for Dynamics 365 & Power Apps_ is a solution that allows you to validate and format telephone numbers from within **Dynamics 365 Online** or a **Power App**. The solution is based on the proven Dynamics CRM Plug-In technology and it can also be used with Dynamics 365 **CRM On-Premise**. 

If you use Microsoft Dynamics CRM On-Premise **2016 or and older** version, please [read on here](#crmoldversions).

Dynamics 365 applications based on a different technology, like **Dynamics 365 BC**, have not yet been tested, and they are not yet supported.

## MSPro Dynamics 365 - Platform Services

This is an architectural concept to extend Dynamics 365 applications or Power Apps with any kind of server side business logic. _MSPro Dynamics 365 - Platform Services_ are the gas that powers _activeTAPI for Dynamics 365._ [read more...](/serviceplatform/introduction.md)

## activeTAPI-REST API

The _activeTAPI-REST API_ is a REST service, hosted on Microsoft Azure that provided all the functionality _activeTAPI for Dynamics 365_ uses to validate and format telephone numbers. [See API Docs...](https://activetapi3.azurewebsites.net/swagger/index.html)

## Microsoft Dynamics CRM On-Premise 2016 and older <a id="crmoldversions"></a>

Initially, activeTAPI was integrated with **Microsoft Dynamics CRM 2011**. activeTAPI is based on the [_MSPro Dynamics Platform Services_](/serviceplatform/introduction.md) Technology which makes it very independent of the Dynamics version. However, client-side scripting for a\) Platform communication and b\) for displaying messages on the form had to be adjusted. We do not yet support this out-of-the-box, but if you are interested in doing this, [let us know](mailto:msc@activeTAPI.net).

