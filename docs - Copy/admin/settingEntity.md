---
parent: Technical information
nav_order: 800
title: Settings Entity
has_children: false
---

# activeTAPI Settings Entity

activeTAPI comes with its own entity which contains all settings. This entity is a simple key-value list, for example:

![image-20191217151534194](settingEntity.assets/image-20191217151534194.png)

The following keys can be used:

> Please  notice the **keys and values** are **Case-Sensitive**!

## ActiveTAPI.ClientId

You will get this key from your vendor when you have purchased your own license. Without this settings, activeTAPI uses the [shared license](http://activetapi.net/licensing/sharedlicense/?target=_blank).

## Plugin.NLog.Config

activeTAPI supports *tracing* for diagnostic purpose, based on [NLog](https://nlog-project.org/). With this configuration setting you can control logging. If this settings is not available, which is the default, logging is disabled. Use this setting only when you got advice from your vendor, to trace down issues with activeTAPI.
