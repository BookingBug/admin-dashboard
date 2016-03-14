'use strict';

angular.module('BBAdminApp.settings', [])
.config ['$stateProvider', ($stateProvider) ->
  $stateProvider
  .state 'admin.settings', {
    url         : 'settings',
    templateUrl : '/tpls/settings.html',
    controller  : 'SettingsPageCtrl',
    resolve     : {
      loadModule: ['$ocLazyLoad', ($ocLazyLoad) ->
        $ocLazyLoad.load('js/bb-admin-settings.min.js');
      ]
    }
  }
]