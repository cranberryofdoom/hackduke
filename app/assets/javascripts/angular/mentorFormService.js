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
                url: 'https://script.google.com/macros/s/AKfycbwu6i4gi9Sx7teTtDN0B33BxLDq_b9mgde_9dv2yv1y3eYQrmI/exec',
                type: 'post',
                data: data
            });
        };
        return this;
  }]);
