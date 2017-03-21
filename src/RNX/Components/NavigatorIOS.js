'use strict';

// var RN = require('react-native');

exports.push = function(this_) {
    return function (route) {
        return function() {
            this_.push(route);
        };
    };
};

exports.pop = function(this_) {
    return function() {
        this_.pop();
    };
};

exports.unsafeApplyProps = function (p) {
  return function (f) {
    var r = f(p);
    if (r.ios) {
      r = r.ios(r);
      delete r.ios;
    }
    if (r.android) {
      r = r.android(r);
      delete r.android;
    }
    return r;
  };
};
