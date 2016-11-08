'use strict';

var React = require('react');
var ReactNative = require('react-native');

exports.createElement = function(clazz) {
    return function(props) {
        return function(children) {
            return React.createElement(clazz, props.length > 0 ? mkProps(props) : null, children);
        };
    };
};

exports.createElementOneChild = function(clazz) {
    return function(props) {
        return function(child) {
            console.log(child);
            var elm = React.createElement(clazz, props.length > 0 ? mkProps(props) : null, child);
            //console.log(elm);
            return elm;
        };
    };
};

var handler = function (key, action) {
    //console.log(key);
    //console.log(action);
    var obj = {};
    obj [key] =  function (input, parentAction) {
        var fn = function (ev) {
            console.log("action " + action  + "called with ev:" + ev);
            input(parentAction(action(ev)))();
        };
        console.log("function created with parentAction: " + parentAction + " input: " + input + " key: " + key + " action: " + action + " fn: " + fn);
        return fn;
    };
    return obj;
};

exports.handler = handler;
exports.handlerBool = handler;
exports.handlerUnit = handler;


exports.textElem = function(text) {
    return text;
};

exports.activityIndicatorClass        = ReactNative.ActivityIndicator;
exports.buttonClass                   = ReactNative.Button;
exports.datePickerIOSClass            = ReactNative.DatePickerIOS;
exports.drawerLayoutAndroidClass      = ReactNative.DrawerLayoutAndroid;
exports.imageClass                    = ReactNative.Image;
exports.keyboardAvoidingViewClass     = ReactNative.KeyboardAvoidingView;
exports.listViewClass                 = ReactNative.ListView;
exports.mapViewClass                  = ReactNative.MapView;
exports.modalClass                    = ReactNative.Modal;
exports.pickerClass                   = ReactNative.Picker;
exports.pickerItemClass               = ReactNative.Picker.Item;
exports.progressBarAndroidClass       = ReactNative.ProgressBarAndroid;
exports.progressViewIOSClass          = ReactNative.ProgressViewIOS;
exports.refreshControlClass           = ReactNative.RefreshControl;
exports.scrollViewClass               = ReactNative.ScrollView;
exports.segmentedControlIOSClass      = ReactNative.SegmentedControlIOS;
exports.sliderClass                   = ReactNative.Slider;
exports.statusBarClass                = ReactNative.StatusBar;
exports.snapshotViewIOSClass          = ReactNative.SnapshotViewIOS;
exports.switchClass                   = ReactNative.Switch;
exports.tabBarIOSClass                = ReactNative.TabBarIOS;
exports.tabBarIOSItemClass            = ReactNative.TabBarIOS.Item;
exports.textClass                     = ReactNative.Text;
exports.textInputClass                = ReactNative.TextInput;
exports.toolbarAndroidClass           = ReactNative.ToolbarAndroid;
exports.touchableHighlightClass       = ReactNative.TouchableHighlight;
exports.touchableNativeFeedbackClass  = ReactNative.TouchableNativeFeedback;
exports.touchableOpacityClass         = ReactNative.TouchableOpacity;
exports.touchableWithoutFeedbackClass = ReactNative.TouchableWithoutFeedback;
exports.viewClass                     = ReactNative.View;
exports.viewPagerAndroidClass         = ReactNative.ViewPagerAndroid;
exports.webViewClass                  = ReactNative.WebView;

function mkProps(props) {
    var result = {};
    for (var i = 0, len = props.length; i < len; i++) {
        var prop = props[i];
        for (var key in prop) {
            if (prop.hasOwnProperty(key)) {
                result[key] = prop[key];
            }
        }
    }
    return result;
};


// :: (a -> b) -> Html a -> Html b
exports.forwardTo = function (parentAction) {
    return function (html) {
        if (!html.props) return html;
        var childAction = html.props.puxParentAction;
        var action = parentAction;
        if (childAction) {
            action = function (a) {
                return parentAction(childAction(a));
            };
        }
        return React.cloneElement(html, { puxParentAction: action });
    };
};

// :: (a -> b) -> Attribute a -> Attribute b
exports.mapAttribute = function (f) {
    return function (attr) {
        if (typeof attr[1] !== 'function') {
            return attr;
        }
        return [attr[0], function(input, parentAction) {
            return attr[1](input, function(e) {
                return f(parentAction(e));
            });
        }];
    };
};
