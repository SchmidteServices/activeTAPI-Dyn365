# activeTAPI for Dynamisc 365 
## Release History

### v1.1.0	2019-12-31

* `DataContract` and `DataAnnotations` removed
  * using `NewtonSoft` everywhere
* Compatibility with activeTAPI-Service v3 (Linux, dotnet core v3.1)
  * [https://activetapi3.azurewebsites.net/swagger/index.html](https://activetapi3.azurewebsites.net/swagger/index.html)
  * Takes obviously a bit longer for the very first start
* Using sand-boxed Plug-In
  * Fixed `FileIoException` and using GET only
* `NLog` completely removed, using `TracingService` only
  * NLOG does not make sense in online environment, while it is good for on-Premise installations
* No more ProxyTypeAssemblies