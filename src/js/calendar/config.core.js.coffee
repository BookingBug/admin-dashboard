'use strict';

# Calendar modules config

angular.module('BBAdminApp.calendar', [])
.config ['$stateProvider', ($stateProvider) ->
  $stateProvider
  .state 'admin.calendar', {
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
        state: "admin.calendar.dashboard"
      }
    }
  }
  .state 'admin.calendar.dashboard', {
    url         : '/dashboard',
    templateUrl : '/tpls/calendar/dashboard.html',
    controller  : 'CalendarDashboardPageCtrl',
    resolve     : {
      loadModule: ['$ocLazyLoad', ($ocLazyLoad) ->
        $ocLazyLoad.load('js/bb-admin-calendar.min.js');
      ]
    }
  }
  .state 'admin.calendar.upcoming', {
    url         : '/upcomming-recent',
    templateUrl : '/tpls/calendar/upcoming.html',
    controller  : 'CalendarUpcomingPageCtrl',
    resolve     : {
      loadModule: ['$ocLazyLoad', ($ocLazyLoad) ->
        $ocLazyLoad.load('js/bb-admin-calendar.min.js');
      ]
    }
  }
  .state 'admin.calendar.search', {
    url         : '/search',
    templateUrl : '/tpls/calendar/search.html',
    controller  : 'CalendarSearchPageCtrl',
    resolve     : {
      loadModule: ['$ocLazyLoad', ($ocLazyLoad) ->
        $ocLazyLoad.load('js/bb-admin-calendar.min.js');
      ]
    }
  }
  .state 'admin.calendar.bulk', {
    url         : '/bulk',
    templateUrl : '/tpls/calendar/bulk.html',
    controller  : 'CalendarBulkPageCtrl',
    resolve     : {
      loadModule: ['$ocLazyLoad', ($ocLazyLoad) ->
        $ocLazyLoad.load('js/bb-admin-calendar.min.js');
      ]
    }
  }
  .state 'admin.calendar.insights', {
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
