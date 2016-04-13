'use strict';

# Placeholder definitions
angular.module('BBAdminApp.check-in.controllers', [])
angular.module('BBAdminApp.check-in.services', [])
angular.module('BBAdminApp.check-in.directives', [])

angular.module('BBAdminApp.check-in', [
  'BBAdminApp.check-in.controllers',
  'BBAdminApp.check-in.services',
  'BBAdminApp.check-in.directives'
])
.run ['RuntimeStates', 'CheckInOptions', 'TemplateService', (RuntimeStates, CheckInOptions, TemplateService) ->
  # Choose to opt out of the default Customers routing
  if CheckInOptions.use_default_states
    prefix = CheckInOptions.parent_state + (if CheckInOptions.parent_state then '.' else '')

    RuntimeStates
    .state prefix + 'check-in', {
      url              : 'check-in',
      template         : ()->
        return TemplateService.get('/tpls/check-in/index.html')
      controller       : 'CheckInPageCtrl',
      resolve          : {
        loadModule: ['$ocLazyLoad', ($ocLazyLoad) ->
          $ocLazyLoad.load('js/bb-admin-check-in.min.js');
        ]
      }
    }
]