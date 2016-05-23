var app = angular.module('app.controllers',['app.services']);

app.controller('HomeCtrl', ['$scope', '$http', function($scope, $http){

	$scope.deleteColaborator = deleteColaborator;

	$scope.submitVerba = submitVerba;

	init();

	function init(){
		$http.get('/colaborators.json').then(function(response){
			$scope.colaborators = response.data;
		},
		function(err){
			$scope.errors = err;
			alert("Um erro, ocorreu. Não foi possível carregar os dados.");
		});
	}

	function deleteColaborator(id){
		if(confirm('Deseja apagar este usuário?')){
			$http.delete('/colaborators/'+id+'.json').then(function(response){
				init();
			},
			function(err){
				alert("Um erro, ocorreu. Não foi possível carregar os dados.");
			});
		}
	}

	function submitVerba(params){
		$http.get('/choose_colaborators'+'.pdf').then(function(response){
			$scope.colaborator = response.data;
		},
		function(err){
			$scope.errors = err;
			alert("Um erro, ocorreu. Não foi possível carregar os dados.");
		});
	}

}]);

app.controller('ColaboratorsCtrl', ['$scope', '$http','$state', '$stateParams', function($scope, $http, $state, $stateParams){
	$scope.createColaborator = createColaborator;

	$scope.editColaborator = editColaborator;

	$scope.getColaborator = getColaborator;

	function getColaborator(){
		$http.get('/colaborators/'+$stateParams.id+'.json').then(function(response){
			$scope.colaborator = response.data;
		},
		function(err){
			$scope.errors = err;
			alert("Um erro, ocorreu. Não foi possível carregar os dados.");
		});
	}

	function createColaborator(colaborator){
		$http.post('/colaborators.json', colaborator).then(function(response){
			$scope.colaborator = response.data;
			$state.go('home');
		},
		function(err){
			alert("Um erro, ocorreu. Não foi possível carregar os dados.");
		});
	}

	function editColaborator(colaborator){
		$http.patch('/colaborators/'+$stateParams.id+'.json', colaborator).then(function(response){
			$scope.colaborator = response.data;
			$state.go('home');
		},
		function(err){
			alert("Um erro, ocorreu. Não foi possível carregar os dados.");
		});
	}
}]);
