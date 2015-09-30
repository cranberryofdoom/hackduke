'use strict';

/**
 * @ngdoc function
 * @name applyHackdukeApp.controller:MainCtrl
 * @description
 * # MainCtrl
 * Controller of the applyHackdukeApp
 */
angular.module('hackDukeMentorApp')
  .controller('mentorApplyCtrl', ['$scope', '$location', '$modal', '$anchorScroll', 'formService',
    function ($scope, $location, $modal, $anchorScroll, formService) {
    $scope.tracks = [
    	'Education',
    	'Energy',
    	'Inequality',
    	'Health'
    ];
    $scope.showError = false;
    $scope.signup = {};
    $scope.signup.classification = 'Participant';
    $scope.applyFormObject = {};
    $scope.applyForm = {};

    $scope.goToTop = function() {
    	$location.hash('top');
    	$anchorScroll();
    };

    $scope.noCheckedBox = function() {
    	return !$scope.tracks.some(function(track) {
    		return $scope.applyForm[track];
    	});
    }


    $scope.revertError = function() {
        $scope.showError = false;
    };

    $scope.submitMentor = function() {
        console.log($scope.applyForm);
    }

    $scope.submit = function() {
    	if ($scope.applyFormObject.hackDukeMentorForm.$invalid) {
    		$scope.showError = true;
    		$scope.goToTop();
    	} else {
            $scope.trackAnswers = {};
    		$scope.tracks.forEach(function(track) {
	    		if ($scope.applyForm[track] == true) {
	    			$scope.trackAnswers[track] = 'Yes';
	    		} else {
	    			$scope.trackAnswers[track] = 'No';
	    		}
	    	});
            var help = 'No';
            if ($scope.applyForm.help == true) {
                help = 'Yes'
            }
	    	$scope.data = {
	    		Name: $scope.applyForm.name,
                Email: $scope.applyForm.email,
                Company: $scope.applyForm.company,
                Health: $scope.trackAnswers.Health,
                'Energy & Environment' : $scope.trackAnswers.Energy,
                Inequality : $scope.trackAnswers.Inequality,
                Education : $scope.trackAnswers.Education,
                'Shirt Size': $scope.applyForm.tshirt,
                Phone : $scope.applyForm.phone,
                'Help Novices?' : help,
                'Tech Focus' : $scope.applyForm.techfocus
		    };

            var callerScope = $scope;


            $modal.open({
                template: '<div><p style="text-align:center" id="savingOrganizer">{{modalInfo.info}}</p></div>',
                size: 'lg',
                controller: ['$scope', '$modalInstance', function($scope, $modalInstance) {
                    $scope.modalInfo = {};
                    $scope.modalInfo.info = 'Saving your information';
                    var modalscope = $scope;
                    $.when(formService.saveData(callerScope.data)).then(function() {
                        modalscope.modalInfo.info = 'Success!';
                        $('#savingOrganizer').click();
                        setTimeout(function() {
                            $modalInstance.close();
                        }, 100);
                        callerScope.tracks.forEach(function(track) {
                            callerScope.applyForm[track] = false;
                        });
                        callerScope.showError = false;
                        callerScope.applyForm.name = '';
                        callerScope.applyForm.email= '';
                        callerScope.applyForm.company = '';
                        callerScope.applyForm.phone = '';
                        callerScope.applyForm.tshirt = '';
                        callerScope.applyForm.help = false;
                        callerScope.applyForm.techfocus = '';
                        callerScope.data = {};
                    }, function() {
                        modalscope.modalInfo.info = 'Unfortunately there has been an error :(';
                        $('#savingOrganizer').click();
                        callerScope.tracks.forEach(function(track) {
                            callerScope.applyForm[track] = false;
                        });
                
                        callerScope.applyForm.name = '';
                        callerScope.applyForm.email= '';
                        callerScope.applyForm.company = '';
                        callerScope.applyForm.phone = '';
                        callerScope.applyForm.tshirt = '';
                        callerScope.applyForm.help = false;
                        callerScope.applyForm.techfocus = '';
                        callerScope.data = {};
                        callerScope.showError = false;
                        setTimeout(function() {
                            $modalInstance.close();
                        }, 100);
                    });
                }]
            });
    	}
    	
    };
  }]);
