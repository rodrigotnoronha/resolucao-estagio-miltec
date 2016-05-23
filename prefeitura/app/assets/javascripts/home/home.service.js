var app = angular.module('app.services',[]);

app.factory('HomeService', ['', function(){
	return function name(){

	};
}]);

app.factory('ColaboratorsService', ['$http', function($http){
	function getColaborators() {
    return $http.get('/colaborators.json');
  }
  function getColaborator(id) {
    return $http.get('/colaborators/'+id+'.json');
  }
	function createColaborator(colaborator){
    return $http.post('/colaborators', colaborator);
	}

  return {
    one: getColaborator,
		all: getColaborators,
		create: createColaborator
  };
}]);
