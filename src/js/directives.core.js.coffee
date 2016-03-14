'use strict'

# Core directives
angular.module('BBAdminApp.directives', [])
#closes or opens sidemenu around the tablet breakpoint
.directive 'bodyResize', ['$window', '$timeout', ($window, $timeout) ->
    {
      restrict: 'A'
      link: (scope, element) ->
        $timeout (->
          _sideMenuSetup()
          return
        ), 0
        angular.element($window).bind 'resize', ->
          _sideMenuSetup()
          return

        _sideMenuSetup = ->
          if $window.innerWidth > 768
            scope.page.sideMenuOn = true
          else
            scope.page.sideMenuOn = false
          scope.$apply()
          return

        return
    }
]
#Ensures the app takes on the full viewport height
.directive 'contentHeight', ['$window', '$timeout', ($window, $timeout) ->
    {
      restrict: 'A',
      link: (scope, element, attributes) ->

        includeFooter = true
        includeHeader = true

        includeHeader = attributes.includeHeader if attributes.includeHeader?
        includeFooter = attributes.includeFooter if attributes.includeFooter?

        $timeout (->
          _contentHeightSetup()
          return
        ), 10
        angular.element($window).bind 'resize', ->
          _contentHeightSetup()
          return

        _contentHeightSetup = ->
          height = $window.innerHeight
          #subtrackt the header height
          height = height-angular.element(document).find('header')[0].offsetHeight if includeHeader == true
          #subtrackt the footer height
          height = height-angular.element(document).find('footer')[0].offsetHeight if includeFooter == true

          element.css {
            height : height + 'px'
          }
          #Update the slider component if one exists
          scope.$emit 'content.changed'
          return
        return
    }
]
