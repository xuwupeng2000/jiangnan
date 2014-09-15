//= require vendor/angular.min.js

var smartNavbar = angular.module('smartNavbar', []) 
.controller('smartNavbarController', function ($scope, $http, $window) {
  'use strict'
  var currentController = gon.location;
  $scope.currentController = currentController;

  $scope.getNavbarState = function(tabname) {
    console.log(currentController);
    var active = 'active';
    var nonactive = 'nonactive';
    if((tabname == 'resume') && (currentController == 'pages')) {
      return active;
    }
    else if((tabname == 'account') && ( (currentController == 'registrations') || (currentController == 'sessions') || (currentController == 'passwords'))) {
      return active; 
    }
    else if((tabname == 'blog') && (currentController == 'posts')) {
      return active; 
    }
    else {
      return nonactive;
    }
  };
});
