'use strict';

angular.module('BBAdminApp.calendar.controllers', [
  'BBAdminApp.calendar.services'
])
.controller 'CalendarPageCtrl',['$rootScope', '$scope', '$state','toastr','$http', ($rootScope, $scope, $state, toastr,$http) ->
  console.log 'Calendar Controller'
]
.controller 'CalendarDashboardPageCtrl',['$rootScope', '$scope', '$state','toastr','$http', ($rootScope, $scope, $state, toastr,$http) ->
  console.log 'Calendar Dashboard Controller'
]
.controller 'CalendarUpcomingPageCtrl',['$rootScope', '$scope', '$state','toastr','$http', ($rootScope, $scope, $state, toastr,$http) ->
  console.log 'Calendar Upcoming Controller'
]
.controller 'CalendarSearchPageCtrl',['$rootScope', '$scope', '$state','toastr','$http', ($rootScope, $scope, $state, toastr,$http) ->
  console.log 'Calendar search Controller'
]
.controller 'CalendarBulkPageCtrl',['$rootScope', '$scope', '$state','toastr','$http', ($rootScope, $scope, $state, toastr,$http) ->
  console.log 'Calendar Bulk Controller'
]
.controller 'CalendarInsightsPageCtrl',['$rootScope', '$scope', '$state','toastr','$http', ($rootScope, $scope, $state, toastr,$http) ->
  console.log 'Calendar insights Controller'
]