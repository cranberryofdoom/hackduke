'use strict';

/**
 * @ngdoc function
 * @name applyHackdukeApp.controller:MainCtrl
 * @description
 * # MainCtrl
 * Controller of the applyHackdukeApp
 */
angular.module('hackDukeApp')
  .controller('teamApplyCtrl', function ($scope, $location, $anchorScroll, formService) {
  	$scope.applyForm = {
    };
    $scope.divisions = [
    	'marketing',
    	'logistics',
    	'applications',
    	'sponsorship',
    	'programmes'
    ];
    $scope.showError = false;

    $scope.applyFormObject = {};
    

    $scope.goToTop = function() {
    	$location.hash('top');
    	$anchorScroll();
    };

    $scope.noCheckedBox = function() {
    	return !$scope.divisions.some(function(division) {
    		return $scope.applyForm[division];
    	});
    }

    $scope.submit = function() {
    	if ($scope.applyFormObject.hackDukeForm.$invalid) {
    		$scope.showError = true;
    		$scope.goToTop();
    	} else {
    		$scope.divisions.forEach(function(division) {
	    		if ($scope.applyForm[division] === true) {
	    			$scope.applyForm[division] = 'Yes';
	    		} else {
	    			$scope.applyForm[division] = 'No';
	    		}
	    	});
	    	var data = {
	    		Name: $scope.applyForm.name,
	    		netId: $scope.applyForm.netId,
	    		Email: $scope.applyForm.email,
	    		Graduation: $scope.applyForm.graduationYear,
	    		Phone: $scope.applyForm.phoneNumber,
	    		Experience: $scope.applyForm.experience,
	    		Projects: $scope.applyForm.projects,
	    		Marketing: $scope.applyForm.marketing,
	    		Logistics: $scope.applyForm.logistics,
	    		Sponsorship: $scope.applyForm.sponsorship,
	    		Programmes: $scope.applyForm.programmes,
	    		Applications: $scope.applyForm.applications,
	    		Ideas: $scope.applyForm.ideas
		    };
	    	formService.saveData(data);
    	}
    	
    };
  });
