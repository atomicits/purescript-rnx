"use strict";

// module ReactNative.Styles

exports._createStyleSheet = function (styleSheet) {
    var stylesObj = {};
    styleSheet.forEach(function (s) {
        var mergeStyle = {};
        s.styles.forEach(function (style) {
            Object.keys(style).forEach(function (k) {
                mergeStyle[k] = style[k];
              });
          });
        stylesObj[s.name] = mergeStyle;
      });
    return require("react-native").StyleSheet.create(stylesObj);
  };

exports.getStyleId = function (styleSheet) {
    return function (key) {
        return styleSheet[key];
      };
  };

function unsafeMkStyleProp(key) {
  return function (value) {
      var obj = {};
      obj[key] = value;
      return obj;
    };
}

exports.unsafeMkStyleProp = unsafeMkStyleProp;
exports.unsafeMkStyleSheet = unsafeMkStyleProp;
