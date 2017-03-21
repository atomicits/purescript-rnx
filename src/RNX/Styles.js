'use strict';

// module ReactNative.Styles

exports._createStyleSheet = function(styleSheet){
    var stylesObj = {};
    styleSheet.forEach(function(s){
        var mergeStyle = {};
        s.styles.forEach(function(style){
            Object.keys(style).forEach(function(k){
                mergeStyle[k] = style[k];
            });
        });
        stylesObj[s.name] = mergeStyle;
    });
    return require('react-native').StyleSheet.create(stylesObj);
};



var _createStyleSheet1 = function(styles){
    var stylesObj = {};
    styles.forEach(function(s) {
        var elemStyles = s.value1;
        var elemObj = {};
        elemStyles.forEach(function(e){ elemObj[e[0]] = e[1]; });
        stylesObj[s.value0] = elemObj;
    });
    return require('react-native').StyleSheet.create(stylesObj);
};

exports.getStyleId = function(styleSheet){
    return function(key){
        return styleSheet[key];
    };
};


function unsafeMkStyleProp (key) {
    return function(value) {
        var obj = {};
        obj[key] = value;
        return obj;
    };
}

exports.unsafeMkStyleProp = unsafeMkStyleProp;
exports.unsafeMkStyleSheet = unsafeMkStyleProp;
