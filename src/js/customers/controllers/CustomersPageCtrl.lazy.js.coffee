'use strict';

###
* @ngdoc controller
* @name BBAdminApp.customers.controllers.controller:CheckInPageCtrl
#
* @description
* Controller for the customers page
###
angular.module('BBAdminApp.customers.controllers')
.controller 'CustomersPageCtrl',['$rootScope', '$scope', '$state','toastr','$http', ($rootScope, $scope, $state, toastr,$http) ->
  console.log 'Customers Controller'
]