angular.module('client').config [
  '$stateProvider','$locationProvider','$urlRouterProvider'
  ($stateProvider,$locationProvider,$urlRouterProvider) ->

    $locationProvider.html5Mode(true)
    $urlRouterProvider.otherwise('/')
    $stateProvider
      .state 'site',
        url: '',
        abstract: true,
        templateUrl: 'modules/site/layout.html'

      .state 'site.home',
        url: '/',
        templateUrl: 'modules/home/index.html',
        controller: 'HomeCtrl'

      .state 'site.works',
        url: '/works',
        templateUrl: 'modules/works/index.html',
        controller: 'WorksCtrl'

      .state 'site.resume',
        url: '/resume',
        templateUrl: 'modules/resume/index.html',
        controller: 'ResumeCtrl'

      .state 'site.contact',
        url: '/contact',
        templateUrl: 'modules/contact/index.html',
        controller: 'ContactCtrl'
]
