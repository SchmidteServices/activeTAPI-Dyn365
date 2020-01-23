---
title: Use-Cases
nav_order: 300
has_children: false
---

# Simple Use-Cases

In this section you will find a couple of use-cases demonstrating the benefits _activeTAPI for Microsoft Dynamics 365_.

## Prerequisites

Please make sure _activeTAPI for Microsoft Dynamics 365_ is [installed properly](../admin/verifySetupOnPremise.md). Otherwise you might not see any result. After importing the *Solution*, *activeTAPI* is active on the **Contact Main Form**.

## Enter a valid telephone number

1. Navigate to the Contact Main Form
2. Create a new Contact and 
 enter a *Business Phone* telephone number
 ![image-20191217225001259](usecase.assets/image-20191217225001259.png)
3. Leave the field - navigate to *Mobile Phone*
4. Check the result: activeTAPI has formatted your 'number sequence'
   ![image-20191217225158248](usecase.assets/image-20191217225158248.png)

> NOTE: The first call to activeTAPI can take several seconds - we have recognized 30 seconds and more. Be patient, if it happens it is only on the very first call of a day. 

## Enter an invalid area code

In Germany, 0141 is an unknown area code. Let's simulate a typo and enter `0141 556677` instead of the correct `0151 556677`  - which is a mobile number.

![image-20191217225725243](usecase.assets/image-20191217225725243.png)

**Country: guessed*: The entered number did not contain a country code. That's why activeTAPI is 'guessing' a configurable default country code. In this case +49 for Germany.

*Area: uncertain*: activeTAPI could not find any match for the given area, in the guessed country. activeTAPI won't claim, the area is definitely invalid because area codes changes frequently.

Let's fix the area code to `0151`and see what happens:

![image-20191217230313428](usecase.assets/image-20191217230313428.png)

Obviously activeTAPI has adjusted the area code, and it seems even area code `0151`is only half the truth: `015112` is the full area code:

![image-20191217230408983](usecase.assets/image-20191217230408983.png)

## Country codes

Let's play with country codes: +1 is the country code for the United States of America (and other countries). activeTAPI recognizes a leading '00' or a '+' as: *the number starts with a country code*. 

![image-20191217230749937](usecase.assets/image-20191217230749937.png)

activeTAPI recognized the country is ok, however for this country somethings is wrong with the area code:

![image-20191217230845069](usecase.assets/image-20191217230845069.png)

Fix area code to:

![image-20191217230946056](usecase.assets/image-20191217230946056.png)

and activeTAPI takes care for the rest.

![image-20191217231014039](usecase.assets/image-20191217231014039.png)

If you try an invalid  country code, you might see this:

![img](usecase.assets/SNAGHTML1e272f5.PNG)