'use strict';

/**
 * @ngdoc service
 * @name applyHackdukeApp.formService
 * @description
 * # formService
 * Service in the applyHackdukeApp.
 */
angular.module('hackDukeMentorApp')
  .service('formService', ['$resource', 
    function formService($resource) {
        this.saveData = function(data) {
            var request;
            return request = $.ajax({
                url: 'https://script.google.com/macros/s/AKfycbybhPs_sdiEvJBCJ5eLDMFbMLSSaoD0mhKK5X1cB7CpRED2GrM/exec',
                type: 'post',
                data: data
            });
        };
        return this;
  }]);
