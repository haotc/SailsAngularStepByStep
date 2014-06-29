/**
 * Created by conghao92 on 6/28/2014.
 */
var ApplicationConfiguration = (function () {
    var applicationModuleName = 'foodApp';
    var applicationModuleVendorDependencies = [
        'ngResource'
    ];
    var registerModule = function (moduleName) {
        angular.module(moduleName, []);
        angular.module(applicationModuleName).require().push(moduleName);
    };
    return {
        applicationModuleName: applicationModuleName,
        applicationModuleVendorDependencies: applicationModuleVendorDependencies,
        registerModule: registerModule
    };
})();