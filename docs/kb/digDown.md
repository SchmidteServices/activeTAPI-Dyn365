---
parent: Knowledge Base
title: Gather information
nav_order: 100
has_children: true
has_toc: false
---

# Gather information

If you see activeTAPI does do anything, 

![nothing Happens](digDown.assets/nothing Happens.gif)

follow these steps:

0. Contact your Administrator!
   Honestly! Bus as a user you won't be able to see any of the details behind the curtain, of course.

1. As an Administrator: 
   **Enable Plug-In Trace Log**

   ![image-20191223163847898](digDown.assets/image-20191223163847898.png)

   NOTE: Depending whether you're using Dynamics 365 Online, Power Apps or on Dynamicsi 365 On-Premise, there are different way to accomplish this. Finally, you will find the *Plug-In Trace Log* here:

   ![image-20191223164102288](digDown.assets/image-20191223164102288.png)

2. Before we can see anything, we need to **reproduce the 'problem'**.

3. Enter a telephone number and let activeTAPI (try to) format it.
   Well, activeTAPI does not actually format the telephone number. That is the reason why you're reading these pages, isn't it? Btt now, you have got some mor information!

4. Navigate to the *Plug-In Trace Log* entity (see above). **Refresh your view** and, you should see some records:

   ![image-20191223165809825](digDown.assets/image-20191223165809825.png)

If there is a *Exception* it is very important to get the complete exception information. Select, copy and past and open with any editor. Maybe you can immediately see what is wrong, otherwise check the *KnowledgeBase* for the exception message, or send us an e-mail.

Normally the records which explicitelly refer to *MSPro.PlatformServices.ServcieMessage* contains more and better information. 

![image-20191223170812053](digDown.assets/image-20191223170812053.png)

If you encounter an **empty message block**, the Plug-in was not even executed. [Continue reading here](emptyMessageBlock.md).
