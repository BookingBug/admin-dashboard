'use strict';

angular.module('BBAdminApp.customers.controllers', [
  'BBAdminCustomersTpls'
])
.controller 'CustomersPageCtrl',['$rootScope', '$scope', '$state','toastr','$http', ($rootScope, $scope, $state, toastr,$http) ->
  console.log 'Customers Controller'
]