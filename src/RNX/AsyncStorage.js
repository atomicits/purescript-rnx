'use strict';

var asyncStorage = require('react-native').AsyncStorage;

exports._getItem = function(key){
    return function(){
        return asyncStorage.getItem(key).then(
            function(val){
                console.log(val);
                return val;
            }
        ).catch(function(e){
            throw new Error(e);
        });
    };
};

exports._setItem = function(key){
    return function(value){
        return function(){
            return asyncStorage.setItem(key, value)
                .catch(function(e){
                    throw new Error(e);
                });
        };
    };
};

exports._removeItem = function(key){
    return function(){
        return asyncStorage.removeItem(key)
            .catch(function(e){
                throw new Error(e);
            });
    };
};
