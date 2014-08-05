'use strict';

/**
 * @ngdoc service
 * @name applyHackdukeApp.formService
 * @description
 * # formService
 * Service in the applyHackdukeApp.
 */
angular.module('hackDukeApp')
  .service('formService', function formService() {
    this.saveData = function(data) {
    	var request;
    	request = $.ajax({
            url: 'https://script.google.com/macros/s/AKfycbzv8wqHChb6PluQWH8Yh3tJBllZHLorLoc3I4d13YSBGUwDhJ4/exec',
            type: 'post',
            data: data
        });
    };
    return this;
  });
