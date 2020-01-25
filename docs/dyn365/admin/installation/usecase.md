---
title: Use-Cases
nav_order: 300
has_children: false
description: >-
  Show-Cases demonstrating the benefits of activeTAPI for Microsoft Dynamics
  365.
---

# Show-Cases

## Prerequisites

Please make sure _activeTAPI for Microsoft Dynamics 365_ is [installed properly](../../kb/verifyinstonpremise.md). Otherwise you might not see any result. After importing the _Solution_, _activeTAPI_ is active on the **Contact Main Form**.

## Enter a valid telephone number

1. Navigate to the Contact Main Form
2. Create a new Contact and 

   enter a _Business Phone_ telephone number

   ![image-20191217225001259](../../../.gitbook/assets/image-20191217225001259.png)

3. Leave the field - navigate to _Mobile Phone_
4. Check the result: activeTAPI has formatted your 'number sequence'

   ![image-20191217225158248](../../../.gitbook/assets/image-20191217225158248%20%283%29.png)

> NOTE: The first call to activeTAPI can take several seconds - we have recognized 30 seconds and more. Be patient, if it happens it is only on the very first call of a day.

## Enter an invalid area code

In Germany, 0141 is an unknown area code. Let's simulate a typo and enter `0141 556677` instead of the correct `0151 556677` - which is a mobile number.

![image-20191217225725243](../../../.gitbook/assets/image-20191217225725243.png)

_\*Country: guessed_: The entered number did not contain a country code. That's why activeTAPI is 'guessing' a configurable default country code. In this case +49 for Germany.

_Area: uncertain_: activeTAPI could not find any match for the given area, in the guessed country. activeTAPI won't claim, the area is definitely invalid because area codes changes frequently.

Let's fix the area code to `0151`and see what happens:

![image-20191217230313428](../../../.gitbook/assets/image-20191217230313428%20%282%29.png)

Obviously activeTAPI has adjusted the area code, and it seems even area code `0151`is only half the truth: `015112` is the full area code:

![image-20191217230408983](../../../.gitbook/assets/image-20191217230408983%20%281%29.png)

## Country codes

Let's play with country codes: +1 is the country code for the United States of America \(and other countries\). activeTAPI recognizes a leading '00' or a '+' as: _the number starts with a country code_.

![image-20191217230749937](../../../.gitbook/assets/image-20191217230749937%20%282%29.png)

activeTAPI recognized the country is ok, however for this country somethings is wrong with the area code:

![image-20191217230845069](../../../.gitbook/assets/image-20191217230845069%20%282%29.png)

Fix area code to:

![image-20191217230946056](../../../.gitbook/assets/image-20191217230946056%20%282%29.png)

and activeTAPI takes care for the rest.

![image-20191217231014039](../../../.gitbook/assets/image-20191217231014039%20%281%29.png)

If you try an invalid country code, you might see this:

![img](../../../.gitbook/assets/snaghtml1e272f5%20%282%29.PNG)

