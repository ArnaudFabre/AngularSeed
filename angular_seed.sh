#!/bin/bash

PKG="yarn"
DIR="node_modules"
CMD="yarn add angular --dev"

case $# in
1)
	echo "Generating $1..."
;;
2)
	case $2 in
		"yarn")
			PKG="yarn"
			DIR="node_modules"
			CMD="yarn add angular --dev"
		;;
		"bower")
			PKG="bower"
			DIR="bower_components"
			CMD="bower install -S angular"
		;;
		*)
		 echo "Package manager $2 not supported"
		 exit 2
	esac
	echo "Generating $1 with $2..."
;;
*)
	echo "./angular_seed seed_name [bower|yarn]"
	exit 1
;;
esac

mkdir $1
cd $1
mkdir assets

touch assets/style.css
touch index.html
touch app.js

echo "<!doctype html>" > index.html
echo "<html lang='en' ng-app='${1}App'>" >> index.html
echo "  <head>" >> index.html
echo "      <meta charset='utf-8'>" >> index.html
echo "      <title>${1}App</title>" >> index.html
echo "      <link rel='stylesheet' href='assets/style.css'>" >> index.html
echo "      <script src='$DIR/angular/angular.js'></script>" >> index.html
echo "      <script src='app.js'></script>" >> index.html
echo "  </head>" >> index.html
echo "  <body ng-controller='${1}Ctrl'>" >> index.html
echo "  </body>" >> index.html
echo "</html>" >> index.html

echo "var ${1}App = angular.module('${1}App', []);" > app.js
echo "" >> app.js
echo "${1}App.controller('${1}Ctrl', function (\$scope) {" >> app.js
echo "" >> app.js
echo "});" >> app.js

echo "Now run the following command:"
echo "sudo npm install -g $PKG"
echo "cd $1  && $PKG init && $CMD"
