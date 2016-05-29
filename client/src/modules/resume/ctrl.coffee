Ctrl = ($scope,$state,$window)->
  $scope.resumeHeight = {'height':"#{$window.innerHeight*.60}px"}

  $scope.stacks = [
    {
      category: "APIs: "
      techs: ['Rails','NodeJs (expressJs)']
    }
    {
      category: "Frontend: "
      techs: ['AngularJs','ReactJs']
    }
    {
      category: "Mobile: "
      techs: ['Ionic','React Native']
    }
    {
      category: "DevOps: "
      techs: ['Ansible','Capistrano','Docker','Chef']
    }
  ]

  $scope.degrees = [
    {
      date: "2009 - 2012"
      details: "Bachelor of Science degree in Computer Science, Major in Software Technology"
      school: "De La Salle University - Manila (2009 - 2012)"
    }
  ]
  $scope.experiences = [
    {
      date: 'Nov 2014  -  Present'
      company: 'Sourcepad Int Inc  (Nov 2014  -  Present)'
      title: 'Fullstack Engineer'
      description: 'Mobile, Web, Servers and all tech in between'
    }
    {
      date: 'Dec 2013 - Nov 2014'
      company: 'Digiteer Creatives'
      title: 'Software Engineer'
      description: 'Rails Developer'
    }
    {
      date: 'Dec 2013 - Nov 2014'
      company: 'Core-Enabler Inc (Dec 2013 - Nov 2014)'
      title: 'Software Engineer'
      description: 'J2EE, Rails'
    }
    {
      date: 'Mar 2013 - Dev 2013'
      company: 'AppSource Inc (March 2013 - December 2013)'
      title: 'Web and Mobile Developer'
      description: 'AngularJs, Rails'
    }
    {
      date: 'Mar 2011 - Jun 2011'
      company: 'Information Gateway Inc (March 2011 - June 2011)'
      title: 'Software Engineer Intern'
      description: 'J2EE Developer'
    }

  ]

  $scope.back = ->
    $state.go("site.home")

Ctrl.$inject = ['$scope','$state','$window']
angular.module('client').controller('ResumeCtrl', Ctrl)
