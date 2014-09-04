'use strict';

/**
 * @ngdoc function
 * @name applyHackdukeApp.controller:MainCtrl
 * @description
 * # MainCtrl
 * Controller of the applyHackdukeApp
 */
angular.module('hackDukeApp')
  .controller('teamApplyCtrl', ['$scope', '$location', '$modal', '$anchorScroll', 'formService', 
    function ($scope, $location, $modal, $anchorScroll, formService) {
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
           // var modalInstance = createModal();
            $scope.participantData = {
                Name: $scope.participateForm.name,
                Email: $scope.participateForm.email
            };
            var callerScope = $scope;

            $modal.open({
              template: '<div><p style="text-align:center" id="savingParticipant">{{modalInfo.info}}</p></div>',
              size: 'lg',
              controller: ['$scope', '$modalInstance', function($scope, $modalInstance) {
                $scope.modalInfo = {};
                $scope.modalInfo.info = 'Saving your information';
                var modalscope = $scope;
                $.when(formService.saveParticipantData(callerScope.participantData)).then(function() {
                    modalscope.modalInfo.info = 'Success!';
                    $('#savingParticipant').click();
                    setTimeout(function() {
                        $modalInstance.close();
                    }, 100);
                    callerScope.participateForm.name = '';
                    callerScope.participateForm.email = '';
                }, function() {
                modalscope.modalInfo.info = 'There seems to be a problem. Please try again later!';
                    $('#savingParticipant').click();
                    setTimeout(function() {
                        $modalInstance.close();
                    }, 1800);
                });
              }]
            });
        }
    };


    $scope.revertError = function() {
        $scope.showError = false;
    };

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

            var callerScope = $scope;

            $modal.open({
                template: '<div><p style="text-align:center" id="savingOrganizer">{{modalInfo.info}}</p></div>',
                size: 'lg',
                controller: ['$scope', '$modalInstance', function($scope, $modalInstance) {
                    $scope.modalInfo = {};
                    $scope.modalInfo.info = 'Saving your information';
                    var modalscope = $scope;
                    $.when(formService.saveParticipantData(callerScope.participantData)).then(function() {
                        modalscope.modalInfo.info = 'Success!';
                        $('#savingOrganizer').click();
                        setTimeout(function() {
                            $modalInstance.close();
                        }, 100);
                        $scope.divisions.forEach(function(division) {
                            $scope.applyForm[division] = false;
                        });
                
                        callerScope.applyForm.name = '';
                        callerScope.applyForm.netId = '';
                        callerScope.applyForm.email = '';
                        callerScope.applyForm.graduationYear = '';
                        callerScope.applyForm.phoneNumber = '';
                        callerScope.applyForm.projects = '';
                        callerScope.applyForm.experience = '';
                        callerScope.applyForm.ideas = '';
                    }, function() {
                        modalscope.modalInfo.info = 'There seems to be a problem. Please try again later!';
                        $('#savingOrganizer').click();
                        setTimeout(function() {
                            $modalInstance.close();
                        }, 1800);
                    });
                }]
            });
    	}
    	
    };
  }]);
