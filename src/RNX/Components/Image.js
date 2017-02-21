'use strict';

exports.unsafeStyleProp = function(s) {
  return function(v) {
    var o = {};
    o[s] = v;
    return o;
  }
}