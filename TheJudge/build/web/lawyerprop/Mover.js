/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
'use strict';

var UserHome = angular.module('UserHome', ['ngRoute']);

UserHome.config(function($routeProvider){

    $routeProvider.when('/',{
        templateUrl : 'userprop/userhome.jsp',
        controller : 'Homecontroller'
    }).when('/userhome',{
        templateUrl : 'userprop/userhome.jsp',
        controller : 'HomeCon'
    }).when('/Cases',{
        templateUrl : 'userprop/cases.jsp',
        controller : 'CaseController'
    }).when('/mComplain',{
        templateUrl : 'userprop/Complain.jsp',
        controller : 'ComplainController'
    }).when('/Out',{
        templateUrl : 'userprop/out.jsp',
        controller : 'OutController'
    });
            
            
});

UserHome.controller('Homecontroller', function($scope) {


}); 


UserHome.controller('HomeCon', function($scope) {

});

UserHome.controller('ComplaintController', function($scope) {

});
UserHome.controller('OutController', function($scope) {


});