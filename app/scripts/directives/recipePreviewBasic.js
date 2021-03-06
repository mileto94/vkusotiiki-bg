'use strict';

angular.module('vkusotiikiBgApp')
  .directive('recipePreviewBasic', function () {
    return {
      templateUrl: 'views/recipePreviewBasic.html',
      restrict: 'E',
      scope: {
        recipe: '='
      },
      controller: 'RecipePreview'
    };
  })
  .filter('toDate', function () {
    return function (date) {
      return new Date(date);
    };
  });
