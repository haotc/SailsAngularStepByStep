/**
 * Created by conghao92 on 6/28/2014.
 */
var Application = angular.module(ApplicationConfiguration.applicationModuleName, ApplicationConfiguration.applicationModuleVendorDependencies);

// Configure our routes
Application.config(function ($routeProvider) {
    $routeProvider.when('/', {
        templateUrl: 'views/index.html',
        controller: 'homeController'
    }).when('/target', {
        templateUrl: 'views/target.html',
        controller: 'targetController'
    }).when('/signin', {
        templateUrl: 'views/signin.html',
        controller: 'signinController'
    }).when('/signup', {
        templateUrl: 'views/signup.html',
        controller: 'signupController'
    });
});

Application.controller('homeController', function () {
});
Application.controller('targetController', function () {
});
Application.controller('signinController', function () {
});
Application.controller('signupController', function () {
});