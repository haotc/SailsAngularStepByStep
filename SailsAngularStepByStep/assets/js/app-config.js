/**
 * Created by conghao92 on 6/28/2014.
 */
var ApplicationConfiguration = (function () {
    var applicationModuleName = 'foodApp';
    var applicationModuleVendorDependencies = [
        'ngResource'
    ];
    return {
        applicationModuleName: applicationModuleName,
        applicationModuleVendorDependencies: applicationModuleVendorDependencies
    };
})();

var Application = angular.module(ApplicationConfiguration.applicationModuleName, ApplicationConfiguration.applicationModuleVendorDependencies);