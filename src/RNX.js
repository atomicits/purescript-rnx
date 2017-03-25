"use strict";

var React = require('react');

var ReactNative = require("react-native");

if (ReactNative.Platform !== "ios") {
    console.log('adding back button event listener');
    ReactNative.BackAndroid.addEventListener('hardwareBackPress', function(){
        console.log('back button pressed');
        return true;
    });
}


exports.registerComponent = function(name){
    return function(component){
        return function(){
            require('react-native')
                .AppRegistry
                .registerComponent(name, function(){
                    return component;
                });
        };
    };
};


exports.signal = function reactClass(signal) {
    return React.createClass({
        componentWillMount: function () {
            var ctx = this;
            signal.subscribe(function () {
                ctx.forceUpdate();
            });
        },
        render: function () {
            return signal.get();
        }
    });
};


// exports.render = function (input, parentAction, element) {
//     function composeAction(parentAction, element) {
//         var childAction = element.props && element.props.puxParentAction;
//         var action = parentAction;
//         if (childAction) {
//             action = function (a) {
//                 return parentAction(childAction(a));
//             };
//         }
//         return action;
//     }


//     function render(input, parentAction, element) {
//         var props = element.props;
//         var newProps = {};

//         for (var key in props) {
//             if (key !== 'puxParentAction' && key !== 'renderNavigationView'  && typeof props[key] === 'function') {
//                 newProps[key] = props[key](input, parentAction);
//             }
//         }

//         var newChildren = React.Children.map(element.props.children, function (child) {
//             if (typeof child === 'string') {
//                 return child;
//             } else {
//                 return render(input, composeAction(parentAction, child), child);
//             }
//         });

//         function universalChildrenOnly(children) {
//             return (Array.isArray (children) && children.length === 1)
//                 ? children[0]
//                 : children;
//         }

//         return React.cloneElement(element, newProps, universalChildrenOnly(newChildren));
//     }

//     var rendered = render(input, composeAction(parentAction, element), element);
//     console.log(rendered);
//     return rendered;
// };
