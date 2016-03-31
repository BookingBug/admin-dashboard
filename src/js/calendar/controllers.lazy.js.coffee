'use strict';

angular.module('BBAdminApp.calendar.controllers', [
  'BBAdminApp.calendar.services'
])
.controller 'CalendarPageCtrl',['$rootScope', '$scope', '$state','toastr','$http', ($rootScope, $scope, $state, toastr,$http) ->
  console.log 'Calendar Controller'
]
.controller 'CalendarDashboardPageCtrl',['$rootScope', '$scope', '$state','toastr','$http', ($rootScope, $scope, $state, toastr,$http) ->
  console.log 'Calendar Dashboard Controller'

  $scope.calendarView = 'day'
  $scope.calendarDate = new Date()
  $scope.calendarTitle = 'Whatever'
  $scope.events = [
    {
      title: 'My event title', # The title of the event
      type: 'info', # The type of the event (determines its color). Can be important, warning, info, inverse, success or special
      startsAt: new Date(), # A javascript date object for when the event starts
#      endsAt: new Date(), # Optional - a javascript date object for when the event ends
      editable: false, # If edit-event-html is set and this field is explicitly set to false then dont make it editable.
      deletable: false, # If delete-event-html is set and this field is explicitly set to false then dont make it deleteable
      draggable: true, # Allow an event to be dragged and dropped
      resizable: true, # Allow an event to be resizable
      incrementsBadgeTotal: true, # If set to false then will not count towards the badge total amount on the month and year view
#      recursOn: 'year', # If set the event will recur on the given period. Valid values are year or month
      cssClass: 'a-css-class-name' # A CSS class (or more, just separate with spaces) that will be added to the event when it is displayed on each view. Useful for marking an event as selected / active etc
    }
  ]
  $scope.eventClicked = (event)->
    console.log event

  $scope.eventEdited = (event)->
    console.log event

  $scope.eventDeleted = (event)->
    console.log event
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