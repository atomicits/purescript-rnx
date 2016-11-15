"use strict";

var ReactNative = require("react-native");

var navSignal = {};

var stateUtils = ReactNative.NavigationExperimental.StateUtils.push;

exports.stateUtils_push = function (navState){
    return function(route){
        return function(){
            return stateUtils.push(navState, route);
        };
    };
};

exports.stateUtils_pop = function (navState){
    return function(route){
        return function(){
            return stateUtils.pop(navState, route);
        };
    };
};


var navigateTo = function(route) {
    return function(){
        navSignal.set({action: 'Push', route: {key: "Key-" + new Date(), route : route}});
    };
};

var goBack = function() {
    //return function(){
    navSignal.set({action: 'Pop', route: {key: "emptykey", route: "emptyroute"}});
    //};
};


exports.createNavSignal = function(constant) {
    navSignal = constant({});

    if (ReactNative.Platform !== "ios"){
        ReactNative.BackAndroid.addEventListener('hardwareBackPress', function(){
            navSignal.set({action: 'pop', route: {key: "emptykey", route: "emptyroute"}});
            return true;
        });
    }

    return function () {
        return navSignal;
    };
};

exports.navigateTo = navigateTo;
exports.goBack = goBack;

exports.stringify = function(o){
    console.log(JSON.stringify(o));
    return JSON.stringify(o);
}
