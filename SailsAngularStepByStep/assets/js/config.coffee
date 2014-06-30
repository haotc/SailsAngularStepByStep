###
Created by conghao92 on 6/28/2014.
###
ApplicationConfiguration = (->
  applicationModuleName = "foodApp"
  applicationModuleVendorDependencies = [
    "ngResource"
    "ngRoute"
  ]
  registerModule = (moduleName) ->
    angular.module moduleName, []
    angular.module(applicationModuleName).require().push moduleName
    return

  applicationModuleName: applicationModuleName
  applicationModuleVendorDependencies: applicationModuleVendorDependencies
  registerModule: registerModule
)()