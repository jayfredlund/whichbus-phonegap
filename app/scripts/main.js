require.config({

  shim: {

  },

  paths: {
    jquery: 'vendor/jquery.min',
    underscore: '../components/underscore/underscore-min',
    google: 'http://maps.googleapis.com/maps/api/js?key=AIzaSyDI_tGrmAMV4wPYDHCbkdOhpSCsYT8dBPI&sensor=true&libraries=geometry'
  }
});

require(['transit/index', 'underscore','jquery'],

function(app) {
  $(function() { Transit.init(); });
  console.log(app);
});