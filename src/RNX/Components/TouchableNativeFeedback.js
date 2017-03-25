'use strict';

var RN = require("react-native");

var empty = function(){};
var TNF = RN.Platform === 'android' ? RN.TouchableNativeFeedback : {
    SelectableBackground: empty,
    SelectableBackgroundBorderless: empty,
    canUseNativeForeground: empty,
    Ripple: empty
};

exports.selectableBackground = TNF.SelectableBackground();
exports.selectableBackgroundBorderless = TNF.SelectableBackgroundBorderless();
exports.ripple = function (color) {
    return function (b) {
        return TNF.Ripple(color,b);
    };
};
exports.canUseNativeForeground = TNF.canUseNativeForeground();
