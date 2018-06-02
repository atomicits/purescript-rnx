'use strict';

// module ReactNative.Styles
const RN = require('react-native');

exports.createStyle = function(o) {
    const ss = RN.StyleSheet.create({s : o});
    return ss.s;
};
