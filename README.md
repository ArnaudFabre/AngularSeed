# AngularSeed

Basic bash script to create simple demonstration Angular App with :
* one empty css in assets directory
* one index.html file with one controller
* one app.js file with one controller

```
./angular_seed.sh MyNewApp [bower|yarn]
```

## Install Angular

### Bower

__Deprecated__

You just have then to install bower, and angular :
```
sudo npm install -g bower
bower init && bower install -S angular
```
### Yarn

You just have then to install yarn, and angular :
```
sudo npm install -g yarn
yarn init && yarn install angular --dev
```