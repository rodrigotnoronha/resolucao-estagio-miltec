var app = angular.module('app.controllers',[]);

app.controller('ColaboratorsCtrl', ['$scope', 'ColaboratorsService', function($scope, ColaboratorsService){

	init();

	function init(){
		ColaboratorsService.all.then(function(response){
			$scope.colaborators = response.data;
		},
		function(err){
			$scope.errors = err;
		});
	}

}]);
