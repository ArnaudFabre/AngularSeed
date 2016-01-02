#!/bin/bash

mkdir assets

touch assets/style.css
touch index.html
touch app.js

echo "<!doctype html>" > index.html
echo "<html lang='en' ng-app='${1}App'>" >> index.html
echo "  <header>" >> index.html
echo "      <meta charset='utf-8'>" >> index.html
echo "      <title>${1}App</title>" >> index.html
echo "      <link rel='stylesheet' href='assets/style.css'>" >> index.html
echo "      <script src='bower_components/angular/angular.js'></script>" >> index.html
echo "      <script src='app.js'></script>" >> index.html
echo "  </header>" >> index.html
echo "  <body ng-controller='${1}Ctrl'>" >> index.html
echo "  </body>" >> index.html
echo "</html>" >> index.html

echo "var ${1}App = angular.module('${1}App', []);" > app.js
echo "" >> app.js
echo "${1}App.controller('${1}Ctrl', function (\$scope) {" >> app.js
echo "" >> app.js
echo "});" >> app.js

