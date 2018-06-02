'use strict';

// module ReactNative.Styles
const RN = require('react-native');

exports.createStyle_ = function(o) {
    return RN.StyleSheet.create({s:o}).s;
};
