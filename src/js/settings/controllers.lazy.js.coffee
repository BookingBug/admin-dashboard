'use strict';

angular.module('BBAdminApp.settings.controllers', [
  'BBAdminApp.settings.services'
])
.controller 'SettingsPageCtrl',['$scope', '$state','toastr', ($scope, $state, toastr) ->
  console.log 'Settings Controller'
]
# Business Settings START
.controller 'SettingsBusinessPageCtrl',['$scope', '$state','toastr', ($scope, $state, toastr) ->
  console.log 'Settings Business Controller'

  $scope.state = $state;
]
.controller 'SettingsBusinessPeopleCtrl',['$scope', '$state','toastr', ($scope, $state, toastr) ->
  console.log 'Settings Business People Controller'
]
.controller 'SettingsBusinessResourcesCtrl',['$scope', '$state','toastr', ($scope, $state, toastr) ->
  console.log 'Settings Business Resources Controller'
]
.controller 'SettingsBusinessServicesCtrl',['$scope', '$state','toastr', ($scope, $state, toastr) ->
  console.log 'Settings Business Services Controller'
]
.controller 'SettingsBusinessGridCtrl',['$scope', '$state','toastr', ($scope, $state, toastr) ->
  console.log 'Settings Business Services Controller'
]
# Business Settings STOP
# Events Settings START
.controller 'SettingsEventsPageCtrl',['$scope', '$state','toastr', ($scope, $state, toastr) ->
  console.log 'Settings Events Controller'

  $scope.state = $state;
]
.controller 'SettingsEventsCoursesCtrl',['$scope', '$state','toastr', ($scope, $state, toastr) ->
  console.log 'Settings Events Courses Controller'
]
.controller 'SettingsEventsSingleCtrl',['$scope', '$state','toastr', ($scope, $state, toastr) ->
  console.log 'Settings Events Single Controller'
]
.controller 'SettingsEventsRecurringCtrl',['$scope', '$state','toastr', ($scope, $state, toastr) ->
  console.log 'Settings Events Recurring Controller'
]
.controller 'SettingsEventsGroupsCtrl',['$scope', '$state','toastr', ($scope, $state, toastr) ->
  console.log 'Settings Events Groups Controller'
]
.controller 'SettingsEventsTemplatesCtrl',['$scope', '$state','toastr', ($scope, $state, toastr) ->
  console.log 'Settings Events Templates Controller'
]
# Events Settings STOP
# Promotions Settings START
.controller 'SettingsPromotionsPageCtrl',['$scope', '$state','toastr', ($scope, $state, toastr) ->
  console.log 'Settings Promotions Controller'
]
.controller 'SettingsPromotionsDealsCtrl',['$scope', '$state','toastr', ($scope, $state, toastr) ->
  console.log 'Settings Promotions Deals Controller'
]
.controller 'SettingsPromotionsCouponsCtrl',['$scope', '$state','toastr', ($scope, $state, toastr) ->
  console.log 'Settings Promotions Coupons Controller'
]
.controller 'SettingsPromotionsBulkCtrl',['$scope', '$state','toastr', ($scope, $state, toastr) ->
  console.log 'Settings Promotions Bulk Controller'
]
.controller 'SettingsPromotionsPackagesCtrl',['$scope', '$state','toastr', ($scope, $state, toastr) ->
  console.log 'Settings Promotions Packages Controller'
]
# Promotions Settings STOP
# Booking Settings START
.controller 'SettingsBookingsPageCtrl',['$scope', '$state','toastr', ($scope, $state, toastr) ->
  console.log 'Settings Bookings Controller'
]
.controller 'SettingsBookingsQuestionsCtrl',['$scope', '$state','toastr', ($scope, $state, toastr) ->
  console.log 'Settings Bookings Questions Controller'
]
.controller 'SettingsBookingsTextsCtrl',['$scope', '$state','toastr', ($scope, $state, toastr) ->
  console.log 'Settings Bookings Texts Controller'
]
.controller 'SettingsBookingsAddressesCtrl',['$scope', '$state','toastr', ($scope, $state, toastr) ->
  console.log 'Settings Bookings Addresses Controller'
]
.controller 'SettingsBookingsImagesCtrl',['$scope', '$state','toastr', ($scope, $state, toastr) ->
  console.log 'Settings Bookings Images Controller'
]
# Booking Settings STOP