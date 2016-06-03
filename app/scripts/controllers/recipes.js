'use strict';

/**
 * @ngdoc function
 * @name vkusotiikiBgApp.controller:MainCtrl
 * @description
 * # MainCtrl
 * Controller of the vkusotiikiBgApp
 */
angular.module('vkusotiikiBgApp')
  .controller('RecipesCtrl', ['$scope', function ($scope) {
    $scope.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ];
    $scope.breadcrumbs = [
        {
            'name': 'Начало',
            'stateUrl': 'home'
        },
        {
            'name': 'Рецепти',
            'stateUrl': 'recipes'
        }
    ];
  }]);