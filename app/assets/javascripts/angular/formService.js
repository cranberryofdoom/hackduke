'use strict';

/**
 * @ngdoc service
 * @name applyHackdukeApp.formService
 * @description
 * # formService
 * Service in the applyHackdukeApp.
 */
angular.module('hackDukeApp')
  .service('formService', ['$resource', 
    function formService($resource) {
    this.saveData = function(data) {
    	var request;
    	return request = $.ajax({
            url: 'https://script.google.com/macros/s/AKfycbzv8wqHChb6PluQWH8Yh3tJBllZHLorLoc3I4d13YSBGUwDhJ4/exec',
            type: 'post',
            data: data
        });
    };

    var formsResource = $resource('https://script.google.com/macros/s/AKfycbzv3xZ1czD1VW3cYALGOPOyDIGQFP8Jvs2nYnWDOeDIVvEtk8w/exec');

    this.saveParticipantData = function(data) {
        var request;
        return request = $.ajax({
            url: 'https://script.google.com/macros/s/AKfycbzv3xZ1czD1VW3cYALGOPOyDIGQFP8Jvs2nYnWDOeDIVvEtk8w/exec',
            type: 'post',
            data: data
        });
    };
    return this;
  }]);
