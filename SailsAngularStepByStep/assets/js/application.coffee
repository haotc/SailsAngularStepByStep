###
Created by conghao92 on 6/28/2014.
###
Application = angular.module(ApplicationConfiguration.applicationModuleName, ApplicationConfiguration.applicationModuleVendorDependencies)

# Configure our routes
Application.config ($routeProvider) ->
  $routeProvider.when("/",
    templateUrl: "views/index.html"
    controller: "homeController"
  ).when("/target",
    templateUrl: "views/target.html"
    controller: "targetController"
  ).when("/signin",
    templateUrl: "views/signin.html"
    controller: "signinController"
  ).when "/signup",
    templateUrl: "views/signup.html"
    controller: "signupController"

Application.controller "homeController", ->

Application.controller "targetController", ->

Application.controller "signinController", ->

Application.controller "signupController", ->

Application.controller "todoController", ->