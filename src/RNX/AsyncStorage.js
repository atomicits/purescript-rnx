"use strict";

var asyncStorage = require("react-native").AsyncStorage;

exports._getItem = function (key) {
    return function (success_callback) {
        return function (error_callback) {
            return function () {
                asyncStorage.getItem(key).then(
                    function (val) {
                        console.log(val);
                        if (val !== null) {
                          success_callback(val)();
                        }
                      },
                    function (error) {
                        error_callback(error)();
                      }
                );
              };
          };
      };
  };

exports._setItem = function (key) {
    return function (value) {
        return function (success_callback) {
            return function (error_callback) {
                return function () {
                    asyncStorage.setItem(key, value).then(
                        function () {
                            success_callback(true)();
                          },
                        function (error) {
                            error_callback(error)();
                          }
                    );
                  };
              };
          };
      };
  };

exports._removeItem = function (key) {
    return function (success_callback) {
        return function (error_callback) {
            return function () {
                asyncStorage.removeItem(key).then(
                    function (a) {
                        console.log(a);
                        success_callback(true)();
                      },
                    function (error) {
                        error_callback(error)();
                      }
                );

              };
          };
      };
  };
