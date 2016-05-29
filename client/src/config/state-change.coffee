angular.module('client').run [
  '$rootScope','$location','$state', ($rootScope,$location,$state) ->

    $rootScope.$on '$stateChangeStart', (event, toState, toParams, fromState, fromParams) ->
      ga 'send',
        hitType: 'event'
        eventCategory: 'States'
        eventAction: 'state change'
        eventLabel: toState.name

]
