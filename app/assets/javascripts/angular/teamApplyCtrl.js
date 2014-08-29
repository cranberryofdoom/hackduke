'use strict';

/**
 * @ngdoc function
 * @name applyHackdukeApp.controller:MainCtrl
 * @description
 * # MainCtrl
 * Controller of the applyHackdukeApp
 */
angular.module('hackDukeApp')
  .controller('teamApplyCtrl', function ($scope, $location, $anchorScroll, $modal, formService) {
  	$scope.applyForm = {
    };
    $scope.participateForm = {};
    $scope.divisions = [
    	'marketing',
    	'logistics',
    	'applications',
    	'sponsorship',
    	'programmes'
    ];
    $scope.showError = false;
    $scope.signup = {};
    $scope.signup.classification = 'Participant';
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

    $scope.submitParticipant = function() {
        if ($scope.applyFormObject.hackDukeParticipateForm.$invalid) {
            $scope.showError = true;
            $scope.goToTop();
        } else {
            var modalInstance = createModal();
            var data = {
                Name: $scope.participateForm.name,
                Email: $scope.participateForm.email
            };
            $.when(formService.saveParticipantData(data)).then(function() {
                modalInstance.dismiss();
                $scope.participateForm.name = '';
                $scope.participateForm.email = '';
            });
        }
    };

    function createModal() {
        return $modal.open({
          template: '<div style="text-align:center"><p style="text-align:center">Saving your information...</p></div>',
          size: 'lg'
        });
    }


    $scope.revertError = function() {
        $scope.showError = false;
    };

    $scope.submit = function() {
    	if ($scope.applyFormObject.hackDukeForm.$invalid) {
    		$scope.showError = true;
    		$scope.goToTop();
    	} else {
            var modalInstance = createModal();
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
	    	$.when(formService.saveData(data)).then(function() {
                modalInstance.dismiss();
                $scope.divisions.forEach(function(division) {
                    $scope.applyForm[division] === true;
                });
                $scope.applyForm.name = '';
                $scope.applyForm.netId = '';
                $scope.applyForm.email = '';
                $scope.applyForm.graduationYear = '';
                $scope.applyForm.phoneNumber = '';
                $scope.applyForm.projects = '';
                $scope.applyForm.experience = '';
                $scope.applyForm.ideas = '';
            });
    	}
    	
    };
  });
