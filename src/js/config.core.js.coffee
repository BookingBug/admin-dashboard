'use strict'

dependencies = [
  'ui.router',
  'ct.ui.router.extras',
  'ngAnimate',
  'ngResource',
  'ngTouch',
  'ngSanitize',
  'ngCookies',
  'ui.bootstrap',
  'ui.checkbox',
  'http-auth-interceptor',
  'toastr',
  'angular-loading-bar',
  'oc.lazyLoad',
  'ngScrollable',

  'BBAdminApp.services',
  'BBAdminApp.controllers',
  'BBAdminApp.directives',

  #Separate app modules
  'BBAdminApp.login',
  'BBAdminApp.dashboard',
  'BBAdminApp.calendar',
  'BBAdminApp.customers',
  'BBAdminApp.settings',
  'BBAdminApp.check-in'
]

angular.module('BBAdminApp', dependencies)
.config ['$stateProvider', '$urlRouterProvider', ($stateProvider, $urlRouterProvider) ->
  #We have to preserve the empty state as an abstract one, for this we always redirect to the default page
  $urlRouterProvider.when("/", "/dashboard");

  $stateProvider.state 'admin', {
    url         : '/',
    abstract    : true,
    templateUrl : '/tpls/layout.html',
    controller  : 'LayoutCtrl'
  }
]
#Configuring the modules specific scripts lazyloader
.config ['$ocLazyLoadProvider', ($ocLazyLoadProvider) ->
#  $ocLazyLoadProvider.config {
#    debug: true
#  }
]
#Configuring the app to use the history API without the hashbang !#
.config ['$locationProvider', ($locationProvider) ->
  $locationProvider.html5Mode true;
]
#Configuring the toastr notification service
.config ['toastrConfig', (toastrConfig) ->
  angular.extend toastrConfig, {
    allowHtml     : true,
    positionClass : 'toast-bottom-right'
  }
]
#Configuring POST and PUT headers and body encoding
#This will hijack all POST and PUT requests
.config ['$httpProvider', 'UrlEncoderProvider', ($httpProvider, UrlEncoderProvider) ->
  $httpProvider.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded;charset=utf-8';
  $httpProvider.defaults.headers.put['Content-Type']  = 'application/x-www-form-urlencoded;charset=utf-8';

  # Override $http service's default transformRequest
  $httpProvider.defaults.transformRequest = (data) ->
     if angular.isObject(data) && String(data) != '[object File]' then UrlEncoderProvider.encode data else data;
]
.run ['$rootScope', '$state', ($rootScope, $state) ->

]

