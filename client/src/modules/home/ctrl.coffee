Ctrl = ($scope,$state,$timeout)->

  $scope.showContent = true

  $scope.changeState =(state)->
    switch state
      when 'works'
        $scope.transitionClass = 'anim-slide-down'

    $state.go("site.#{state}")
    #$scope.showContent = false
    # $timeout (->
    #   $state.go("site.#{state}")
    # ), 300

Ctrl.$inject = ['$scope','$state','$timeout']
angular.module('client').controller('HomeCtrl', Ctrl)
