/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
'use strict';

var control = angular.module('control', ['ngRoute']);

control.config(function($routeProvider){

    
    $routeProvider.when('/',{
        templateUrl : 'home.html',
        controller : 'MainController'
    }).when('/Home',{
        templateUrl : 'home.html',
        controller : 'mCon'
    }).when('/Judgement',{
        templateUrl : 'pages/judge.jsp',
        controller : 'JudgeController'
    }).when('/Client',{
        templateUrl : 'pages/lawyer.jsp',
        controller : 'lawyerController'
    }).when('/Lawyer',{
        templateUrl : 'pages/Client.jsp',
        controller : 'ClientController'
    }).when('/Loading',{
        templateUrl : 'loader.jsp',
        controller : 'loaderController'
    }).when('/About',{
        templateUrl : 'pages/about.jsp',
        controller : 'AboutController'
    }).when('/Contact',{
        templateUrl : 'pages/Contact.jsp',
        controller : 'ContactController'
    }).when('/Judging',{
        templateUrl : 'judgement.jsp',
        controller : 'verifyController'
    }).when('/Login',{
        templateUrl : 'Login.jsp',
        controller : 'loginController'
    }).when('/WelcomeHome',{
        templateUrl : 'pages/success.html',
        controller : 'successController'
    });
    
});



control.controller('MainController', function($scope) {


}); 


control.controller('mCon', function($scope) {

});

control.controller('JudgeController', function($scope) {

});
control.controller('lawyerController', function($scope) {


});
control.controller('ClientController', function($scope) {

});
control.controller('AboutController', function($scope) {

});
control.controller('ContactController', function($scope) {

});

control.controller('verifyController', function($scope) {

});
control.controller('loginController', function($scope) {

});
control.controller('successController', function($scope) {

});
control.controller('loaderController', function($scope) {

});