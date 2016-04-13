'use strict';

# Placeholder definitions
angular.module('BBAdminApp.login.controllers', [])
angular.module('BBAdminApp.login.services', [])
angular.module('BBAdminApp.login.directives', [])

angular.module('BBAdminApp.login', [
  'BBAdminApp.login.controllers',
  'BBAdminApp.login.services',
  'BBAdminApp.login.directives'
])
.run ['RuntimeStates', 'LoginOptions', 'TemplateService', (RuntimeStates, LoginOptions, TemplateService) ->
  # Choose to opt out of the default Customers routing
  if LoginOptions.use_default_states
    prefix = LoginOptions.parent_state + (if LoginOptions.parent_state then '.' else '')

    RuntimeStates
    .state prefix + 'login', {
      url              : '/login',
      template         : ()->
        return TemplateService.get('/tpls/login/index.html')
      controller       : 'LoginPageCtrl',
      resolve          : {
        loadModule: ['$ocLazyLoad', ($ocLazyLoad) ->
          $ocLazyLoad.load('js/bb-admin-login.min.js');
        ]
      }
    }
]