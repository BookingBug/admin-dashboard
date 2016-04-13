'use strict';

###
* @ngdoc controller
* @name BBAdminApp.check-in.controllers.controller:CheckInPageCtrl
#
* @description
* Controller for the check-in page
###
angular.module('BBAdminApp.check-in.controllers')
.controller 'CheckInPageCtrl',['$rootScope', '$scope', '$state','toastr','$http', ($rootScope, $scope, $state, toastr,$http) ->
  console.log 'Checkin Controller'
]