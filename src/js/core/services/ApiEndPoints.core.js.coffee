'use strict'

###
* @ngdoc service
* @name BBAdminApp.services.service:ApiEndPoints
*
* @description
* Provides the API endpoints for services that dont come from the Backend
###
angular.module('BBAdminApp.services').factory 'ApiEndPoints', [
  'GeneralOptions'
  (GeneralOptions) ->
    {
      LOGIN : GeneralOptions.api_url + '/api/v1/login/admin'
      LOGIN_SSO : GeneralOptions.api_url + '/api/v1/login/sso/:companyId'
    }
]