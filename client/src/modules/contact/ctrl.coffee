Ctrl = ($scope,$state,$timeout,$http)->

  $scope.showForm = true
  $scope.msg =
    email: ""
    content: ""

  $scope.submit =(form)->
    form.$submitted = true
    if form.$valid
      $scope.showForm = false
      $http.post('/api/messages', $scope.msg)

Ctrl.$inject = ['$scope','$state','$timeout','$http']
angular.module('client').controller('ContactCtrl', Ctrl)
