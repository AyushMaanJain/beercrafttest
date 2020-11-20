


var app = angular.module("myApp", []);
app.controller("myCtrl", function ($scope,$http) {
   $http.get('https://s3-ap-southeast-1.amazonaws.com/he-public-data/beercraft5bac38c.json').then(function(response) {
   $scope.beer = response.data;
    });
   $http.get('https://s3-ap-southeast-1.amazonaws.com/he-public-data/beerimages7e0480d.json').then(function(response) {
   $scope.img = response.data;
    });


});