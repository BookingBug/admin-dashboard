'use strict';

# Calendar modules config
angular.module('BBAdminApp.calendar', [])

###
* @ngdoc service
* @module BBAdminApp.calendar
* @name CalendarParentState
*
* @description
* Returns the parent state in case this module is to be used
* independently from the main admin app
###

###
* @ngdoc service
* @module BBAdminApp.calendar
* @name CalendarParentStateProvider
*
* @description
* Provider that allows the parent state to be overwritten
*
* @example
  <example>
  angular.module('ExampleModule').config ['CalendarParentStateProvider', (CalendarParentStateProvider) ->
    CalendarParentStateProvider.setParent('admin')
  ]
  </example>
###
angular.module('BBAdminApp.calendar').provider 'CalendarParentState', [ ->
  parentState = 'admin'

  @setParent = (parent) ->
    parentState = parent
    return

  @$get =  ->
    parentState

  return
]
angular.module('BBAdminApp.calendar')
.config ['$stateProvider', 'CalendarParentStateProvider', ($stateProvider, CalendarParentStateProvider) ->
  prefix = CalendarParentStateProvider.$get() + (if CalendarParentStateProvider.$get() then '.' else '')

  $stateProvider
  .state  prefix + 'calendar', {
    url         : 'calendar',
    templateUrl : '/tpls/calendar/index.html',
    controller  : 'CalendarPageCtrl',
    resolve     : {
      loadModule: ['$ocLazyLoad', ($ocLazyLoad) ->
        $ocLazyLoad.load('js/bb-admin-calendar.min.js');
      ]
    },
    deepStateRedirect: {
      default: {
        state:  prefix + 'calendar.dashboard'
      }
    }
  }
  .state prefix + 'calendar.dashboard', {
    url         : '/dashboard',
    templateUrl : '/tpls/calendar/dashboard.html',
    controller  : 'CalendarDashboardPageCtrl',
    resolve     : {
      loadModule: ['$ocLazyLoad', ($ocLazyLoad) ->
        $ocLazyLoad.load('js/bb-admin-calendar.min.js');
      ]
    }
  }
  .state prefix + 'calendar.upcoming', {
    url         : '/upcomming-recent',
    templateUrl : '/tpls/calendar/upcoming.html',
    controller  : 'CalendarUpcomingPageCtrl',
    resolve     : {
      loadModule: ['$ocLazyLoad', ($ocLazyLoad) ->
        $ocLazyLoad.load('js/bb-admin-calendar.min.js');
      ]
    }
  }
  .state prefix + 'calendar.search', {
    url         : '/search',
    templateUrl : '/tpls/calendar/search.html',
    controller  : 'CalendarSearchPageCtrl',
    resolve     : {
      loadModule: ['$ocLazyLoad', ($ocLazyLoad) ->
        $ocLazyLoad.load('js/bb-admin-calendar.min.js');
      ]
    }
  }
  .state prefix + 'calendar.bulk', {
    url         : '/bulk',
    templateUrl : '/tpls/calendar/bulk.html',
    controller  : 'CalendarBulkPageCtrl',
    resolve     : {
      loadModule: ['$ocLazyLoad', ($ocLazyLoad) ->
        $ocLazyLoad.load('js/bb-admin-calendar.min.js');
      ]
    }
  }
  .state prefix + 'calendar.insights', {
    url         : '/insights',
    templateUrl : '/tpls/calendar/insights.html',
    controller  : 'CalendarInsightsPageCtrl',
    resolve     : {
      loadModule: ['$ocLazyLoad', ($ocLazyLoad) ->
        $ocLazyLoad.load('js/bb-admin-calendar.min.js');
      ]
    }
  }
]
