'use strict';

// module ReactNative.Styles
const RN = require('react-native');

exports.createStyle = function(obj) {
    return RN.StyleSheet.create({s:obj}).s;
};
