'use strict';

/*jshint maxparams: 2*/

exports.scrollToImpl = function (t,_this) {
    return function () {
        _this.scrollTo(t);
    };
};

var RN = require('react-native');

exports.rcSizeImpl = function (f) {
    return RN.RefreshControl.SIZE[f];
};
