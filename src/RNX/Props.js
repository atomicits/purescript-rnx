'use strict';

// exports.unsafeMkProps = function(key) {
//     return function(val){
//         var o = {};
//         o[key] = val;
//         return o;
//     };
// };

// exports.unsafeMkFnProps = function(key) {
//     return function(val){
//         var o = {};
//         var val1 = val;
//         o[key] = function(){return val1;};
//         console.log("obj["+key+"]: " + o[key]);
//         return o;
//     };
// };

var UIManager = require('UIManager');
var DrawerConsts = UIManager.AndroidDrawerLayout.Constants;

exports.dPLeft = DrawerConsts.DrawerPosition.Left;
exports.dPRight = DrawerConsts.DrawerPosition.Right;

var RefreshLayoutConsts = UIManager.AndroidSwipeRefreshLayout.Constants;


exports.refreshControlSizeDefault = RefreshLayoutConsts.SIZE.DEFAULT;
exports.refreshControlSizeLarge = RefreshLayoutConsts.SIZE.LARGE;

exports.require = require;
