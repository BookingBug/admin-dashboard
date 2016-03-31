'use strict';

angular.module('BBAdminApp.settings', [])
.config ['$stateProvider', ($stateProvider) ->
  $stateProvider
  .state 'admin.settings', {
    url         : 'settings',
    templateUrl : '/tpls/settings/index.html',
    controller  : 'SettingsPageCtrl',
    resolve     : {
      loadModule: ['$ocLazyLoad', ($ocLazyLoad) ->
        $ocLazyLoad.load('js/bb-admin-settings.min.js');
      ]
    },
    deepStateRedirect: {
      default: {
        state: "admin.settings.business"
      }
    }
  }
  # Business Settings START
  .state 'admin.settings.business', {
    url         : '/business',
    templateUrl : '/tpls/settings/business/index.html',
    controller  : 'SettingsBusinessPageCtrl',
    deepStateRedirect: {
      default: {
        state: "admin.settings.business.people"
      }
    }
  }
  .state 'admin.settings.business.people', {
    url         : '/people',
    templateUrl : '/tpls/settings/business/people.html',
    controller  : 'SettingsBusinessPeopleCtrl',
  }
  .state 'admin.settings.business.resources', {
    url         : '/resources',
    templateUrl : '/tpls/settings/business/resources.html',
    controller  : 'SettingsBusinessResourcesCtrl',
  }
  .state 'admin.settings.business.services', {
    url         : '/services',
    templateUrl : '/tpls/settings/business/services.html',
    controller  : 'SettingsBusinessServicesCtrl',
  }
  .state 'admin.settings.business.grid', {
    url         : '/grid',
    templateUrl : '/tpls/settings/business/grid.html',
    controller  : 'SettingsBusinessGridCtrl',
  }
  # Business Settings STOP
  # Events Settings START
  .state 'admin.settings.events', {
    url         : '/events',
    templateUrl : '/tpls/settings/events/index.html',
    controller  : 'SettingsEventsPageCtrl',
    deepStateRedirect: {
      default: {
        state: "admin.settings.events.courses"
      }
    }
  }
  .state 'admin.settings.events.courses', {
    url         : '/courses',
    templateUrl : '/tpls/settings/events/courses.html',
    controller  : 'SettingsEventsCoursesCtrl',
  }
  .state 'admin.settings.events.single', {
    url         : '/single',
    templateUrl : '/tpls/settings/events/single.html',
    controller  : 'SettingsEventsSingleCtrl',
  }
  .state 'admin.settings.events.recurring', {
    url         : '/recurring',
    templateUrl : '/tpls/settings/events/recurring.html',
    controller  : 'SettingsEventsRecurringCtrl',
  }
  .state 'admin.settings.events.groups', {
    url         : '/groups',
    templateUrl : '/tpls/settings/events/groups.html',
    controller  : 'SettingsEventsGroupsCtrl',
  }
  .state 'admin.settings.events.templates', {
    url         : '/templates',
    templateUrl : '/tpls/settings/events/templates.html',
    controller  : 'SettingsEventsTemplatesCtrl',
  }
  # Events Settings STOP
  # Promotions Settings START
  .state 'admin.settings.promotions', {
    url         : '/promotions',
    templateUrl : '/tpls/settings/promotions/index.html',
    controller  : 'SettingsPromotionsPageCtrl',
    deepStateRedirect: {
      default: {
        state: "admin.settings.promotions.deals"
      }
    }
  }
  .state 'admin.settings.promotions.deals', {
    url         : '/deals',
    templateUrl : '/tpls/settings/promotions/deals.html',
    controller  : 'SettingsPromotionsDealsCtrl',
  }
  .state 'admin.settings.promotions.coupons', {
    url         : '/coupons',
    templateUrl : '/tpls/settings/promotions/coupons.html',
    controller  : 'SettingsPromotionsCouponsCtrl',
  }
  .state 'admin.settings.promotions.bulk', {
    url         : '/bulk',
    templateUrl : '/tpls/settings/promotions/bulk.html',
    controller  : 'SettingsPromotionsBulkCtrl',
  }
  .state 'admin.settings.promotions.packages', {
    url         : '/packages',
    templateUrl : '/tpls/settings/promotions/packages.html',
    controller  : 'SettingsPromotionsPackagesCtrl',
  }
  # Promotions Settings STOP
  # Booking Settings START
  .state 'admin.settings.bookings', {
    url         : '/bookings',
    templateUrl : '/tpls/settings/bookings/index.html',
    controller  : 'SettingsBookingsPageCtrl',
    deepStateRedirect: {
      default: {
        state: "admin.settings.bookings.questions"
      }
    }
  }
  .state 'admin.settings.bookings.questions', {
    url         : '/questions',
    templateUrl : '/tpls/settings/bookings/questions.html',
    controller  : 'SettingsBookingsQuestionsCtrl',
  }
  .state 'admin.settings.bookings.texts', {
    url         : '/texts',
    templateUrl : '/tpls/settings/bookings/texts.html',
    controller  : 'SettingsBookingsTextsCtrl',
  }
  .state 'admin.settings.bookings.addresses', {
    url         : '/addresses',
    templateUrl : '/tpls/settings/bookings/addresses.html',
    controller  : 'SettingsBookingsAddressesCtrl',
  }
  .state 'admin.settings.bookings.images', {
    url         : '/images',
    templateUrl : '/tpls/settings/bookings/images.html',
    controller  : 'SettingsBookingsImagesCtrl',
  }
  # Booking Settings STOP
]