module.exports = {
  build: {
    "index.html": "index.html",
    "app.js": [
      "bower_components/jquery/dist/jquery.min.js",
      "bower_components/bootstrap/dist/js/bootstrap.min.js",
      "bower_components/angular/angular.min.js",
      "bower_components/angular-route/angular-route.min.js",
      "javascripts/app.js",
      "apps/dashboard/controllers/dashboard.js"
    ],
    "app.css": [
      "bower_components/bootstrap/dist/css/bootstrap.min.css",
      "bower_components/bootstrap/dist/css/bootstrap-theme.min.css",
      "stylesheets/app.css"
    ],
    "images/": "images/",
    "apps/": "apps/"
  },
  rpc: {
    host: "78.155.207.180",
    port: 8545
  }
};