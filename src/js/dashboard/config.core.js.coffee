'use strict';

# Placeholder definitions
angular.module('BBAdminApp.dashboard.controllers', [])
angular.module('BBAdminApp.dashboard.services', [])
angular.module('BBAdminApp.dashboard.directives', [])

angular.module('BBAdminApp.dashboard', [
  'BBAdminApp.dashboard.controllers',
  'BBAdminApp.dashboard.services',
  'BBAdminApp.dashboard.directives'
])
.run ['RuntimeStates', 'DashboardOptions', 'TemplateService', (RuntimeStates, DashboardOptions, TemplateService) ->
  # Choose to opt out of the default Customers routing
  if DashboardOptions.use_default_states
    prefix = DashboardOptions.parent_state + (if DashboardOptions.parent_state then '.' else '')

    RuntimeStates
    .state prefix + 'dashboard', {
      url        : 'dashboard',
      template   : ()->
        return TemplateService.get('/tpls/dashboard/index.html')
      controller : 'DashboardPageCtrl',
      resolve    : {
        loadModule: ['$ocLazyLoad', ($ocLazyLoad) ->
          $ocLazyLoad.load('js/bb-admin-dashboard.min.js');
        ]
      }
    }
]