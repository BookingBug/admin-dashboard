'use strict';

# Placeholder definitions
angular.module('BBAdminApp.calendar.directives', [])
angular.module('BBAdminApp.calendar.controllers', [])
angular.module('BBAdminApp.calendar.services', [])

# Calendar modules config
angular.module('BBAdminApp.calendar', [
  'BBAdminApp.calendar.services',
  'BBAdminApp.calendar.controllers',
  'BBAdminApp.calendar.directives',
])
.run ['RuntimeStates', 'CalendarOptions', 'TemplateService', (RuntimeStates, CalendarOptions, TemplateService) ->
  # Choose to opt out of the default routing
  if CalendarOptions.use_default_states
    prefix = CalendarOptions.parent_state + (if CalendarOptions.parent_state then '.' else '')

    RuntimeStates
    .state  prefix + 'calendar', {
      url              : 'calendar',
      template         : ()->
        return TemplateService.get('/tpls/calendar/index.html')
      controller       : 'CalendarPageCtrl',
      resolve          : {
        loadModule     : ['$ocLazyLoad', ($ocLazyLoad) ->
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
      url        : '/dashboard',
      template   : ()->
        return TemplateService.get('/tpls/calendar/dashboard.html')
      controller : 'CalendarDashboardPageCtrl'
    }
    .state prefix + 'calendar.upcoming', {
      url        : '/upcomming-recent',
      template   : ()->
        return TemplateService.get('/tpls/calendar/upcoming.html')
      controller : 'CalendarUpcomingPageCtrl'
    }
    .state prefix + 'calendar.search', {
      url        : '/search',
      template   : ()->
        return TemplateService.get('/tpls/calendar/search.html')
      controller : 'CalendarSearchPageCtrl'
    }
    .state prefix + 'calendar.bulk', {
      url        : '/bulk',
      template   : ()->
        return TemplateService.get('/tpls/calendar/bulk.html')
      controller : 'CalendarBulkPageCtrl'
    }
    .state prefix + 'calendar.insights', {
      url        : '/insights',
      template   : ()->
        return TemplateService.get('/tpls/calendar/insights.html')
      controller : 'CalendarInsightsPageCtrl'
    }
]
