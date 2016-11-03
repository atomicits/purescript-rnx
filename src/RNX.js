// module RNX

'use strict';

var React = require('react');

exports.registerComponent = function(name){
    return function(component){
        return function(){
            require('react-native').AppRegistry.registerComponent(name, function(){ return reactClass(component); });
        };
    };
};


function reactClass(htmlSignal) {
    return React.createClass({
        componentWillMount: function () {
            var ctx = this;
            htmlSignal.subscribe(function () {
                ctx.forceUpdate();
            });
        },
        render: function () {
            return htmlSignal.get();
        }
    });
}


// render function

exports.render = function (input, parentAction, html) {
    function composeAction(parentAction, html) {
        var childAction = html.props && html.props.puxParentAction;
        var action = parentAction;
        if (childAction) {
            action = function (a) {
                return parentAction(childAction(a));
            };
        }
        return action;
    }

    function render(input, parentAction, html) {
        var props = html.props;
        var newProps = {};

        for (var key in props) {
            console.log(key);
            if (key !== 'puxParentAction' && key !== 'renderNavigationView'  && typeof props[key] === 'function') {
                newProps[key] = props[key](input, parentAction);
            }
        }

        var newChildren = React.Children.map(html.props.children, function (child) {
            if (typeof child === 'string') {
                return child;
            } else {
                return render(input, composeAction(parentAction, child), child);
            }
        });
        function universalChildrenOnly(children) {
            return (Array.isArray (children) && children.length === 1)
                ? children[0]
                : children;
        }
        var cloned = React.cloneElement(html, newProps, universalChildrenOnly(newChildren));
        console.log(cloned);
        return cloned;
    }

    return render(input, composeAction(parentAction, html), html);
};
