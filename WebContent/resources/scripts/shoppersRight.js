var app = angular.module('shoppersRight', []);

app.controller("shoppersRightController", function($scope, $http){
	$scope.loginsubmit = function(username,password) {
		var parameters = "?username="+username+"&password="+password;
		$http({
            method : "Post",
            url : "/onlineShopping/logon"+parameters,
        }).then(function successCallback(response) {
        	angular.element(document.querySelector("#pageContent")).empty();
	    	angular.element(document.querySelector("#pageContent")).html(response.data);
	    	if(angular.element(document.querySelector("#logout")).hasClass("ng-hide")){
	    		angular.element(document.querySelector("#logout")).removeClass("ng-hide");
	    	}
	    }, function errorCallback(response) {
	    	alert("Exception details: " + JSON.stringify({data: $scope.loginForm }));
	    });
	};
	
	$scope.register = function(firstName,lastName,email,addLine1,addLine2,username,password,confirmPassword,city,state,zipcode) {
		var userType = $scope.userType;
		var parameters = "?firstName="+firstName+"&lastName="+lastName+"&email="+email+"&addLine1="+addLine1+"&addLine2="+addLine2+"&username="+username+"&password="+password+"&confirmPassword="+confirmPassword+"&city="+city+"&state="+state+"&zipcode="+zipcode+"&userType="+userType;
		$http({
            method : "Post",
            url : "/onlineShopping/registerNewUser"+parameters,
        }).then(function successCallback(response) {
	    	alert("success");
	    }, function errorCallback(response) {
	    	alert("Exception details: " + JSON.stringify({data: $scope.loginForm }));
	    });
	};
	
	$scope.logout = function() {
		$http({
            method : "POST",
            url : "/onlineShopping/logout",
        }).then(function successCallback(response) {
	    	if(! angular.element(document.querySelector("#logout")).hasClass("ng-hide")){
	    		angular.element(document.querySelector("#logout")).addClass("ng-hide");
	    	}
	    	window.location.href="/onlineShopping/login";
	    }, function errorCallback(response) {
	    	alert("Exception details: " + JSON.stringify({data: $scope.loginForm }));
	    });
	};
	
	$scope.addNewProductToDB = function(productName,productImage,memberCost,nonMemberCost,itemNumber,stockAvailable,shipsWithin) {
		var parameters = "?productName="+productName+"&productImage="+productImage+"&memberCost="+memberCost+"&nonMemberCost="+nonMemberCost+"&itemNumber="+itemNumber+"&stockAvailable="+stockAvailable+"&shipsWithin="+shipsWithin;
		$http({
            method : "Post",
            url : "/onlineShopping/addProductDataToDB"+parameters,
        }).then(function successCallback(response) {
	    	alert("success");
	    }, function errorCallback(response) {
	    	alert("Exception details: " + JSON.stringify({data: $scope.loginForm }));
	    });
	};
	
	$scope.navigateToProductList = function() {
		if(! angular.element(document.querySelector("#productListTabId")).hasClass("active")){
			angular.element(document.querySelector("#productTabId")).removeClass("active");
			angular.element(document.querySelector("#productListTabId")).addClass("active");
			if(! angular.element(document.querySelector("#productsDiv")).hasClass("ng-hide")){
				angular.element(document.querySelector("#productsDiv")).addClass("ng-hide");
				angular.element(document.querySelector("#listNewProductDiv")).removeClass("ng-hide");
			}
		}
	};
	
	$scope.navigateToProducts = function() {
		if(! angular.element(document.querySelector("#productTabId")).hasClass("active")){
			angular.element(document.querySelector("#productListTabId")).removeClass("active");
			angular.element(document.querySelector("#productTabId")).addClass("active");
			if(! angular.element(document.querySelector("#listNewProductDiv")).hasClass("ng-hide")){
				angular.element(document.querySelector("#listNewProductDiv")).addClass("ng-hide");
				angular.element(document.querySelector("#productsDiv")).removeClass("ng-hide");
			}
		}
	};
	
	$scope.seachDB = function() {
		$http({
            method : "POST",
            url : "/onlineShopping/search",
        }).then(function successCallback(response) {
	    	if(! angular.element(document.querySelector("#logout")).hasClass("ng-hide")){
	    		angular.element(document.querySelector("#logout")).addClass("ng-hide");
	    	}
	    	window.location.href="/onlineShopping/login";
	    }, function errorCallback(response) {
	    	alert("Exception details: " + JSON.stringify({data: $scope.loginForm }));
	    });
	};
	
});

