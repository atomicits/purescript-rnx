'use strict';


exports._getCurrentPosition = function(successCallback){
    return function(errorCallback){
        return function(options){
            return function(){
                navigator.geolocation.getCurrentPosition(function(success){
                    successCallback(JSON.stringify(success))();
                }, function(error){
                    errorCallback(error)();
                }, options);
            };
        };
    };
};


var actionSheetIOS = require('react-native').ActionSheetIOS;

var actionSheetIOS_showActionSheetWithOptions = actionSheetIOS.showActionSheetWithOptions;
exports.actionSheetIOS_showActionSheetWithOptions = function(options){
    return function(callback){
        return function(){
            return actionSheetIOS_showActionSheetWithOptions(options, callback);
        };
    };
};

var actionSheetIOS_showShareActionSheetWithOptions = actionSheetIOS.showShareActionSheetWithOptions;
exports.actionSheetIOS_showShareActionSheetWithOptions = function(options){
    return function(failureCallback) {
        return function(successCallback){
            return function(){
                return actionSheetIOS_showShareActionSheetWithOptions(options, failureCallback, successCallback);
            };
        };
    };
};

var adSupportIOS = require('react-native').AdSupportIOS;
var adSupportIOS_getAdvertisingId = adSupportIOS.getAdvertisingId;
exports.adSupportIOS_getAdvertisingId = function(onSuccess){
    return function(onFailure){
        return function(){
            return adSupportIOS_getAdvertisingId(onSuccess, onFailure);
        };
    };
};
var adSupportIOS_getAdvertisingTrackingEnabled = adSupportIOS.getAdvertisingTrackingEnabled;
exports.adSupportIOS_getAdvertisingTrackingEnabled = function(onSuccess){
    return function(onFailure){
        return function(){
            return adSupportIOS_getAdvertisingTrackingEnabled(onSuccess, onFailure);
        };
    };
};

var alertRN = require('react-native').Alert;
var alert_alert = alertRN.alert;
exports.alert_alert = function(title){
    return function(message){
        return function(buttons){
            return function(options){
                return function(type1){
                    return function(){
                        return alert_alert(title, message, buttons, options, type1);
                    };
                };
            };
        };
    };
};


var alertIOS = require('react-native').AlertIOS;
var alertIos_alert = alertIOS.alert;
exports.alertIOS_alert = function(title){
    return function(message){
        return function(callbackOrButtons){
            return function(type1){
                return function(){
                    return alertIos_alert(title, message, callbackOrButtons, type1);
                };
            };
        };
    };
};

var alertIos_prompt = alertIOS.alert;
exports.alertIOS_prompt = function(title){
    return function(message){
        return function(callbackOrButtons){
            return function(type1){
                return function(defaultValue){
                    return function(){
                        return alertIos_prompt(title, message, callbackOrButtons, type1, defaultValue);
                    };
                };
            };
        };
    };
};


var animated = require('react-native').Animated;
var animated_decay = animated.decay;
exports.animated_decay = function(value){
    return function(config){
        return function(){
            return animated_decay(value, config);
        };
    };
};

var animated_timing = animated.timing;
exports.animated_timing = function(value){
    return function(config){
        return function(){
            return animated_timing(value, config);
        };
    };
};

var animated_spring = animated.spring;
exports.animated_spring = function(value){
    return function(config){
        return function(){
            return animated_spring(value, config);
        };
    };
};

var animated_add = animated.add;
exports.animated_add = function(a){
    return function(b){
        return function(){
            return animated_add(a, b);
        };
    };
};
var animated_divide = animated.divide;
exports.animated_divide = function(a){
    return function(b){
        return function(){
            return animated_divide(a, b);
        };
    };
};
var animated_multiply = animated.multiply;
exports.animated_multiply = function(a){
    return function(b){
        return function(){
            return animated_multiply(a, b);
        };
    };
};
var animated_modulo = animated.modulo;
exports.animated_modulo = function(a){
    return function(modulus){
        return function(){
            return animated_modulo(a, modulus);
        };
    };
};
var animated_diffClamp = animated.diffClamp;
exports.animated_diffClamp = function(a){
    return function(min){
        return function(max){
            return function(){
                return animated_diffClamp(a, min, max);
            };
        };
    };
};
var animated_delay = animated.delay;
exports.animated_delay = function(time){
    return function(){
        return animated_delay(time);
    };
};

var animated_sequence = animated.sequence;
exports. animated_sequence = function(animations){
    return function(){
        return animated_sequence(animations);
    };
};

var animated_parallel = animated.parallel;
exports.animated_parallel = function(animations){
    return function(config){
        return function(){
            return animated_parallel(animations, config);
        };
    };
};

var animated_stagger = animated.stagger;
exports. animated_stagger = function(time){
    return function(animations){
        return function(){
            return animated_stagger(time, animations);
        };
    };
};

var animated_event = animated.event;
exports.animated_event = function(argMapping){
    return function(config){
        return function(){
            return animated_event(argMapping, config);
        };
    };
};

var animated_createAnimatedComponent = animated.createAnimatedComponent;
exports.animated_createAnimatedComponent = function(component){
    return function(){
        return animated_createAnimatedComponent(component);
    };
};


var animatedValue = require('react-native').AnimatedValue;


var animatedValueXY = require('react-native').AnimatedValueXY;


var appRegistry = require('react-native').AppRegistry;
var appRegistry_registerConfig = appRegistry.registerConfig;
exports.appRegistry_registerConfig = function(config){
    return function(){
        return appRegistry_registerConfig(config);
    };
};

var appRegistry_registerComponent = appRegistry.registerComponent;
exports.appRegistry_registerComponent = function(appKey){
    return function(getComponentFunc){
        return function(){
            return appRegistry_registerComponent(appKey, getComponentFunc);
        };
    };
};

var appRegistry_registerRunnable = appRegistry.registerRunnable;
exports.appRegistry_registerRunnable = function(appKey){
    return function(func){
        return function(){
            return appRegistry_registerRunnable(appKey, func);
        };
    };
};

var appRegistry_getAppKeys =  appRegistry.getAppKeys;
exports.appRegistry_getAppKeys = function(o){
    return function(){
        return appRegistry_getAppKeys();
    };
};

var appRegistry_runApplication =  appRegistry.runApplication;
exports.appRegistry_runApplication = function(appKey){
    return function(appParameters){
        return function(){
            return appRegistry_runApplication(appKey, appParameters);
        };
    };
};

var appRegistry_unmountApplicationComponentAtRootTag =  appRegistry.unmountApplicationComponentAtRootTag;
exports.appRegistry_unmountApplicationComponentAtRootTag = function(rootTag){
    return function(){
        return appRegistry_unmountApplicationComponentAtRootTag(rootTag);
    };
};

var appRegistry_registerHeadlessTask = appRegistry.registerHeadlessTask;
exports.appRegistry_registerHeadlessTask = function(taskKey){
    return function(task){
        return function(){
            return appRegistry_registerHeadlessTask(taskKey, task);
        };
    };
};

var appRegistry_startHeadlessTask = appRegistry.startHeadlessTask;
exports.appRegistry_startHeadlessTask = function(taskId){
    return function(taskKey){
        return function(data){
            return function(){
                return appRegistry_startHeadlessTask(taskId, taskKey, data);
            };
        };
    };
};


var appState = require('react-native').AppState;
var appState_addEventListener = appState.addEventListener;
exports.appState_addEventListener = function(type){
    return function(handler){
        return function(){
            return appState_addEventListener(type, handler);
        };
    };
};


var appState_removeEventListener = appState.removeEventListener;
exports.appState_removeEventListener = function(type){
    return function(handler){
        return function(){
            return appState_removeEventListener(type, handler);
        };
    };
};

var asyncStorage = require('react-native').AsyncStorage;
var asyncStorage_getItem = asyncStorage.getItem;
exports.asyncStorage_getItem = function(key){
    return function(callback){
            return function(){
                return asyncStorage_getItem(key,callback );
            };
    };
};
var asyncStorage_setItem = asyncStorage.setItem;
exports.asyncStorage_setItem = function(key){
    return function(value){
        return function(callback){
            return function(){
                return asyncStorage_setItem(key, value, callback);
            };
        };
    };
};
var asyncStorage_removeItem = asyncStorage.removeItem;
exports.asyncStorage_removeItem = function(key){
    return function(callback){
        return function(){
            return asyncStorage_removeItem(key, callback);
        };
    };
};

var asyncStorage_mergeItem = asyncStorage.mergeItem;
exports.asyncStorage_mergeItem = function(key){
    return function(value){
        return function(callback){
            return function(){
                return asyncStorage_mergeItem(key, value, callback);
            };
        };
    };
};
var asyncStorage_clear = asyncStorage.clear;
exports.asyncStorage_clear = function(callback){
    return function(){
        return asyncStorage_clear(callback);
    };
};
var asyncStorage_getAllKeys = asyncStorage.getAllKeys;
exports.asyncStorage_getAllKeys = function(callback){
    return function(){
        return asyncStorage_getAllKeys(callback);
    };
};
var asyncStorage_flushGetRequests = asyncStorage.flushGetRequests;
exports.asyncStorage_flushGetRequests = function(){
    return function(){
        return asyncStorage_flushGetRequests();
    };
};

var asyncStorage_multiGet = asyncStorage.multiGet;
exports.asyncStorage_multiGet = function(keys){
    return function(callback){
        return function(){
            return asyncStorage_multiGet(keys, callback);
        };
    };
};

var asyncStorage_multiSet = asyncStorage.multiSet;
exports.asyncStorage_multiSet = function(keyValuePairs){
    return function(callback){
        return function(){
            return asyncStorage_multiSet(keyValuePairs, callback);
        };
    };
};

var asyncStorage_multiRemove = asyncStorage.multiRemove;
exports.asyncStorage_multiRemove = function(keys){
    return function(callback){
        return function(){
            return asyncStorage_multiRemove(keys, callback);
        };
    };
};
var asyncStorage_multiMerge = asyncStorage.multiMerge;
exports.asyncStorage_multiMerge = function(keyValuePairs){
    return function(callback){
        return function(){
            return asyncStorage_multiMerge(keyValuePairs, callback);
        };
    };
};

var backAndroid = require('react-native').BackAndroid;
var backAndroid_exitApp = backAndroid.exitApp;
exports.backAndroid_exitApp = function(o){
    return function(){
        return backAndroid_exitApp();
    };
};

var backAndroid_addEventListener = backAndroid.addEventListener;
exports.backAndroid_addEventListener = function(eventName){
    return function(handler){
        return function(){
            return backAndroid_addEventListener(eventName, handler);
        };
    };
};

var backAndroid_removeEventListener = backAndroid.removeEventListener;
exports.backAndroid_removeEventListener = function(eventName){
    return function(handler){
        return function(){
            return backAndroid_removeEventListener(eventName, handler);
        };
    };
};


var cameraRoll = require('react-native').CameraRoll;
var cameraRoll_saveImageWithTag = cameraRoll.saveImageWithTag;
exports.cameraRoll_saveImageWithTag = function(tag){
    return function(){
        return cameraRoll_saveImageWithTag(tag);
    };
};

var cameraRoll_saveToCameraRoll = cameraRoll.saveToCameraRoll;
exports.cameraRoll_saveToCameraRoll = function(tag){
    return function(type){
        return function(){
            return cameraRoll_saveToCameraRoll(tag,type);
        };
    };
};

var cameraRoll_getPhotos = cameraRoll.getPhotos;
exports.cameraRoll_getPhotos = function(params){
    return function(){
        return cameraRoll_getPhotos(params);
    };
};


var clipboard = require('react-native').Clipboard;

var clipboard_getString = clipboard.getString;
exports.clipboard_getString = function(o){
    return function(){
        return clipboard_getString();
    };
};

var clipboard_setString = clipboard.setString;
exports.clipboard_setString = function(content){
    return function(){
        return clipboard_setString(content);
    };
};


var datePickerAndroid = require('react-native').DatePickerAndroid;

var datePickerAndroid_open = datePickerAndroid.open;
exports.datePickerAndroid_open = function(options){
    return function(){
        return datePickerAndroid_open(options);
    };
};

var datePickerAndroid_dateSetAction = datePickerAndroid.dateSetAction;
exports.datePickerAndroid_dateSetAction = function(o){
    return function(){
        return datePickerAndroid_dateSetAction();
    };
};


var datePickerAndroid_dismissedAction = datePickerAndroid.dismissedAction;
exports.datePickerAndroid_dismissedAction = function(o){
    return function(){
        return datePickerAndroid_dismissedAction();
    };
};


var dimensions = require('react-native').Dimensions;
var dimensions_set = dimensions.set;
exports.dimensions_set = function(dims){
    return function(){
        return dimensions_set(dims);
    };
};

var dimensions_get = dimensions.get;
exports.dimensions_get = function(dim){
    return function(){
        return dimensions_get(dim);
    };
};

var easing = require('react-native').Easing;
var easing_step0 = easing.step0;
exports.easing_step0 = function(n){
    return function(){
        return easing_step0(n);
    };
};

var easing_step1 = easing.step1;
exports.easing_step1 = function(n){
    return function(){
        return easing_step1(n);
    };
};
var easing_linear = easing.linear;
exports.easing_linear = function(t){
    return function(){
        return easing_linear(t);
    };
};

var easing_ease = easing.ease;
exports.easing_ease = function(t){
    return function(){
        return easing_ease(t);
    };
};

var easing_quad = easing.quad;
exports.easing_quad = function(t){
    return function(){
        return easing_quad(t);
    };
};
var easing_cubic = easing.cubic;
exports.easing_cubic = function(t){
    return function(){
        return easing_cubic(t);
    };
};

var easing_poly = easing.poly;
exports.easing_poly = function(t){
    return function(){
        return easing_poly(n);
    };
};

var easing_sin = easing.sin;
exports.easing_sin = function(t){
    return function(){
        return easing_sin(t);
    };
};

var easing_circle = easing.circle;
exports.easing_circle = function(t){
    return function(){
        return easing_circle(t);
    };
};
var easing_exp = easing.exp;
exports.easing_exp = function(t){
    return function(){
        return easing_exp(t);
    };
};

var easing_elastic = easing.elastic;
exports.easing_elastic = function(bounciness){
    return function(){
        return easing_elastic(bounciness);
    };
};

var easing_back = easing.back;
exports.easing_back = function(s){
    return function(){
        return easing_back(s);
    };
};

var easing_bounce = easing.bounce;
exports.easing_bounce = function(t){
    return function(){
        return easing_bounce(t);
    };
};


var easing_bezier = easing.bezier;
exports.easing_bezier = function(x1){
    return function(y1){
        return function(x2){
            return function(y2){
                return function(){
                    return easing_bezier(x1, y1, x2, y2);
                };
            };
        };
    };
};

var easing_in = easing.in;
exports.easing_in = function(easing){
    return function(){
        return easing_in(easing);
    };
};
var easing_out = easing.out;
exports.easing_out = function(easing){
    return function(){
        return easing_out(easing);
    };
};
var easing_inOut = easing.inOut;
exports.easing_inOut = function(easing){
    return function(){
        return easing_inOut(easing);
    };
};


//var geolocation = require('react-native').Geolocation;
//var geolocation_getCurrentPosition = geolocation.getCurrentPosition;
exports.geolocation_getCurrentPosition = function(geo_success){
    return function(geo_error){
        return function(geo_options){
            return function(){
                return navigator.geolocation.getCurrentPosition(geo_success, geo_error, geo_options);
            };
        };
    };
};

//var geolocation_watchPosition = geolocation.watchPosition;
exports.geolocation_watchPosition = function(success){
    return function(error){
        return function(options){
            return function(){
                return navigator.geolocation.watchPosition(success, error, options);
            };
        };
    };
};

//var geolocation_clearWatch = geolocation.clearWatch;
exports.geolocation_clearWatch = function(watchID){
    return function(){
        return navigator.geolocation.clearWatch(watchID);
    };
};

//var geolocation_stopObserving = geolocation.stopObserving;
exports.geolocation_stopObserving = function(o){
    return function(){
        return navigator.geolocation.stopObserving();
    };
};


var imageEditor = require('react-native').ImageEditor;
var imageEditor_cropImage = imageEditor.cropImage;
exports.imageEditor_cropImage = function(uri){
    return function(cropData){
        return function(success){
            return function(failure){
                return function(){
                    return imageEditor_cropImage(uri, cropData, success, failure);
                };
            };
        };
    };
};

var imagePickerIOS = require('react-native').ImagePickerIOS;
var imagePickerIOS_canRecordVideos = imagePickerIOS.canRecordVideos;
exports.imagePickerIOS_canRecordVideos = function(callback){
    return function(){
        return imagePickerIOS_canRecordVideos(callback);
    };
};


var imagePickerIOS_canUseCamera = imagePickerIOS.canUseCamera;
exports.imagePickerIOS_canUseCamera = function(callback){
    return function(){
        return imagePickerIOS_canUseCamera(callback);
    };
};

var imagePickerIOS_openCameraDialog = imagePickerIOS.openCameraDialog;
exports.imagePickerIOS_openCameraDialog = function(config){
    return function(successCallback){
        return function(cancelCallback){
            return function(){
                return imagePickerIOS_openCameraDialog(config, successCallback, cancelCallback);
            };
        };
    };
};


var imagePickerIOS_openSelectDialog = imagePickerIOS.openSelectDialog;
exports.imagePickerIOS_openSelectDialog = function(config){
    return function(successCallback){
        return function(cancelCallback){
            return function(){
                return imagePickerIOS_openSelectDialog(config, successCallback, cancelCallback);
            };
        };
    };
};

var imageStore = require('react-native').ImageStore;
var imageStore_hasImageForTag =  imageStore.hasImageForTag;
exports.imageStore_hasImageForTag = function(uri){
    return function(callback){
        return function(){
            return imageStore_hasImageForTag(uri, callback);
        };
    };
};

var imageStore_removeImageForTag =  imageStore.removeImageForTag;
exports.imageStore_removeImageForTag = function(uri){
    return function(){
        return imageStore_removeImageForTag(uri);
    };
};

var imageStore_addImageFromBase64 =  imageStore.addImageFromBase64;
exports.imageStore_addImageFromBase64 = function(base64ImageData){
    return function(success){
        return function(failure){
            return function(){
                return imageStore_addImageFromBase64(base64ImageData, success, failure);
            };
        };
    };
};

var imageStore_getBase64ForTag =  imageStore.getBase64ForTag;
exports.imageStore_getBase64ForTag = function(uri){
    return function(success){
        return function(failure){
            return function(){
                return imageStore_getBase64ForTag(uri, success, failure);
            };
        };
    };
};


var intentAndroid = require('react-native').IntentAndroid;
var intentAndroid_openURL = intentAndroid.openURL;
exports.intentAndroid_openURL = function(url){
    return function(){
        return intentAndroid_openURL(url);
    };
};

var intentAndroid_canOpenURL = intentAndroid.canOpenURL;
exports.intentAndroid_canOpenURL = function(url){
    return function(callback){
        return function(){
            return intentAndroid_canOpenURL(url, callback);
        };
    };
};

var intentAndroid_getInitialURL = intentAndroid.getInitialURL;
exports.intentAndroid_getInitialURL = function(callback){
    return function(){
        return intentAndroid_getInitialURL(callback);
    };
};


var interactionManager = require('react-native').InteractionManager;
var interactionManager_runAfterInteractions = interactionManager.runAfterInteractions;
exports.interactionManager_runAfterInteractions = function(task){
    return function(){
        return interactionManager_runAfterInteractions(task);
    };
};

var interactionManager_createInteractionHandle = interactionManager. createInteractionHandle;
exports.interactionManager_createInteractionHandle = function(o){
    return function(){
        return interactionManager_createInteractionHandle();
    };
};


var interactionManager_clearInteractionHandle = interactionManager.clearInteractionHandle;
exports.interactionManager_clearInteractionHandle = function(handle){
    return function(){
        return interactionManager_clearInteractionHandle(handle);
    };
};

var interactionManager_setDeadline = interactionManager.setDeadline;
exports.interactionManager_setDeadline = function(deadline){
    return function(){
        return interactionManager_setDeadline(deadline);
    };
};


var keyboard =  require('react-native').Keyboard;
var keyboard_addListener = keyboard.addListener;
exports.keyboard_addListener = function(eventName){
    return function(callback){
        return function(){
            return keyboard_addListener(eventName, callback);
        };
    };
};


var keyboard_removeListener = keyboard.removeListener;
exports.keyboard_removeListener = function(eventName){
    return function(callback){
        return function(){
            return keyboard_removeListener(eventName, callback);
        };
    };
};

var keyboard_removeAllListeners = keyboard.removeAllListeners;
exports.keyboard_removeAllListeners = function(eventName){
    return function(){
        return keyboard_removeAllListeners(eventName);
    };
};


var keyboard_dismiss = keyboard.dismiss;
exports.keyboard_dismiss= function(o){
    return function(){
        return keyboard_dismiss();
    };
};


var layoutAnimation = require('react-native').LayoutAnimation;
var layoutAnimation_configureNext = layoutAnimation.configureNext;
exports.layoutAnimation_configureNext = function(config){
    return function(onAnimationDidEnd){
        return function(){
            return layoutAnimation_configureNext(config, onAnimationDidEnd);
        };
    };
};

var layoutAnimation_create = layoutAnimation.create;
exports.layoutAnimation_create = function(duration){
    return function(type){
        return function(creationProp){
            return function(){
                return layoutAnimation_create(duration, type, creationProp);
            };
        };
    };
};

var linking =require('react-native').Linking;
var linking_addEventListener = linking.addEventListener;
exports.linking_addEventListener = function(type){
    return function(handler){
        return function(){
            return linking_addEventListener(type, handler);
        };
    };
};
var linking_removeEventListener = linking.removeEventListener;
exports.linking_removeEventListener = function(type){
    return function(handler){
        return function(){
            return linking_removeEventListener(type, handler);
        };
    };
};

var linking_openURL = linking.openURL;
exports.linking_openURL = function(url){
    return function(){
        return linking_openURL(url);
    };
};
var linking_canOpenURL = linking.canOpenURL;
exports.linking_canOpenURL = function(url){
    return function(){
        return linking_canOpenURL(url);
    };
};
var linking_getInitialURL = linking.getInitialURL;
exports.linking_getInitialURL = function(o){
    return function(){
        return linking_getInitialURL();
    };
};

var nativeMethodsMixin = require('react-native').NativeMethodsMixin;
//var nativeMethodsMixin_measure = nativeMethodsMixin.measure;
exports.nativeMethodsMixin_measure = function(callback){
    return function(){
        return nativeMethodsMixin.measure(callback);
    };
};


//var nativeMethodsMixin_measureInWindow = nativeMethodsMixin.measureInWindow;
exports.nativeMethodsMixin_measureInWindow = function(callback){
    return function(){
        return nativeMethodsMixin.measureInWindow(callback);
    };
};


//var nativeMethodsMixin_measureLayout = nativeMethodsMixin.measureLayout;
exports.nativeMethodsMixin_measureLayout = function(relativeToNativeNode){
    return function(onSuccess){
        return function(onFail){
            return function(){
                return nativeMethodsMixin.measureLayout(relativeToNativeNode, onSuccess, onFail);
            };
        };
    };
};


//var nativeMethodsMixin_focus = nativeMethodsMixin.focus;
exports.nativeMethodsMixin_focus = function(o){
    return function(){
        return nativeMethodsMixin.focus();
    };
};


//var nativeMethodsMixin_blur = nativeMethodsMixin.blur;
exports.nativeMethodsMixin_blur = function(o){
    return function(){
        return nativeMethodsMixin.blur();
    };
};


var nativeModules = require('react-native'). NativeModules;


var netInfo = require('react-native').NetInfo;
var netInfo_isConnectionExpensive = netInfo.isConnectionExpensive;
exports.netInfo_isConnectionExpensive = function(o){
    return function(){
        return netInfo_isConnectionExpensive();
    };
};


var netInfo_isConnected = netInfo.isConnected;
exports.netInfo_isConnected = function(o){
    return function(){
        return netInfo_isConnected();
    };
};


var netInfo_addEventListener = netInfo.addEventListener;
exports.netInfo_addEventListener = function(eventName){
    return function(handler){
        return function(){
            return netInfo_addEventListener(eventName,handler);
        };
    };
};


var netInfo_removeEventListener = netInfo.removeEventListener;
exports.netInfo_removeEventListener = function(eventName){
    return function(handler){
        return function(){
            return netInfo_removeEventListener(eventName,handler);
        };
    };
};


var netInfo_fetch = netInfo.fetch;
exports.netInfo_fetch = function(o){
    return function(){
        return netInfo_fetch();
    };
};

//-- isConnected netinfo property


var panResponder = require('react-native').PanResponder;
var panResponder_create = panResponder.create;
exports.panResponder_create = function(config){
    return function(){
        return panResponder_create(config);
    };
};


var permissionsAndroid = require('react-native').PermissionsAndroid;
var permissionsAndroid_checkPermission = permissionsAndroid.checkPermission;
exports.permissionsAndroid_checkPermission = function(permission){
    return function(){
        return permissionsAndroid_checkPermission(permission);
    };
};


var permissionsAndroid_requestPermission = permissionsAndroid.requestPermission;
exports.permissionsAndroid_requestPermission = function(permission){
    return function(rationale){
        return function(){
            return permissionsAndroid_requestPermission(permission,rationale);
        };
    };
};


var pixelRatio = require('react-native').PixelRatio;
var pixelRatio_get = pixelRatio.get;
exports.pixelRatio_get = function(o){
    return function(){
        return pixelRatio_get();
    };
};


var pixelRatio_getFontScale = pixelRatio.getFontScale;
exports.pixelRatio_getFontScale = function(o){
    return function(){
        return pixelRatio_getFontScale();
    };
};


var pixelRatio_getPixelSizeForLayoutSize = pixelRatio.getPixelSizeForLayoutSize;
exports.pixelRatio_getPixelSizeForLayoutSize = function(layoutSize){
    return function(){
        return pixelRatio_getPixelSizeForLayoutSize(layoutSize);
    };
};


var pixelRatio_roundToNearestPixel = pixelRatio.roundToNearestPixel;
exports.pixelRatio_roundToNearestPixel = function(layoutSize){
    return function(){
        return pixelRatio_roundToNearestPixel(layoutSize);
    };
};


var pixelRatio_startDetecting = pixelRatio.startDetecting;
exports.pixelRatio_startDetecting = function(o){
    return function(){
        return pixelRatio_startDetecting();
    };
};


var pushNotificationIOS = require('react-native').PushNotificationIOS;
var pushNotificationIOS_presentLocalNotification = pushNotificationIOS.presentLocalNotification;
exports.pushNotificationIOS_presentLocalNotification = function(details){
    return function(){
        return pushNotificationIOS_presentLocalNotification(details);
    };
};


var pushNotificationIOS_scheduleLocalNotification = pushNotificationIOS.scheduleLocalNotification;
exports.pushNotificationIOS_scheduleLocalNotification = function(details){
    return function(){
        return pushNotificationIOS_scheduleLocalNotification(details);
    };
};


var pushNotificationIOS_cancelAllLocalNotifications = pushNotificationIOS.cancelAllLocalNotifications;
exports.pushNotificationIOS_cancelAllLocalNotifications = function(o){
    return function(){
        return pushNotificationIOS_cancelAllLocalNotifications();
    };
};

var pushNotificationIOS_setApplicationIconBadgeNumber = pushNotificationIOS.setApplicationIconBadgeNumber;
exports.pushNotificationIOS_setApplicationIconBadgeNumber = function(number){
    return function(){
        return pushNotificationIOS_setApplicationIconBadgeNumber(number);
    };
};


var pushNotificationIOS_getApplicationIconBadgeNumber = pushNotificationIOS.getApplicationIconBadgeNumber;
exports.pushNotificationIOS_getApplicationIconBadgeNumber = function(callback){
    return function(){
        return pushNotificationIOS_getApplicationIconBadgeNumber(callback);
    };
};


var pushNotificationIOS_cancelLocalNotifications = pushNotificationIOS.cancelLocalNotifications;
exports.pushNotificationIOS_cancelLocalNotifications = function(userInfo){
    return function(){
        return pushNotificationIOS_cancelLocalNotifications(userInfo);
    };
};


var pushNotificationIOS_getScheduledLocalNotifications = pushNotificationIOS.getScheduledLocalNotifications;
exports.pushNotificationIOS_getScheduledLocalNotifications = function(callback){
    return function(){
        return pushNotificationIOS_getScheduledLocalNotifications(callback);
    };
};


var pushNotificationIOS_addEventListener = pushNotificationIOS.addEventListener;
exports.pushNotificationIOS_addEventListener = function(type){
    return function(handler){
        return function(){
            return pushNotificationIOS_addEventListener(type,handler);
        };
    };
};


var pushNotificationIOS_removeEventListener = pushNotificationIOS.removeEventListener;
exports.pushNotificationIOS_removeEventListener = function(type){
    return function(handler){
        return function(){
            return pushNotificationIOS_removeEventListener(type,handler);
        };
    };
};


var pushNotificationIOS_requestPermissions = pushNotificationIOS.requestPermissions;
exports.pushNotificationIOS_requestPermissions = function(permissions){
    return function(){
        return pushNotificationIOS_requestPermissions(permissions);
    };
};


var pushNotificationIOS_abandonPermissions = pushNotificationIOS.abandonPermissions;
exports.pushNotificationIOS_abandonPermissions = function(o){
    return function(){
        return pushNotificationIOS_abandonPermissions();
    };
};


var pushNotificationIOS_checkPermissions = pushNotificationIOS.checkPermissions;
exports.pushNotificationIOS_checkPermissions = function(callback){
    return function(){
        return pushNotificationIOS_checkPermissions(callback);
    };
};


var pushNotificationIOS_getInitialNotification = pushNotificationIOS.getInitialNotification;
exports.pushNotificationIOS_getInitialNotification = function(o){
    return function(){
        return pushNotificationIOS_getInitialNotification();
    };
};


var pushNotificationIOS_getMessage = pushNotificationIOS.getMessage;
exports.pushNotificationIOS_getMessage = function(o){
    return function(){
        return pushNotificationIOS_getMessage();
    };
};

var pushNotificationIOS_getSound = pushNotificationIOS.getSound;
exports.pushNotificationIOS_getSound = function(o){
    return function(){
        return pushNotificationIOS_getSound();
    };
};


var pushNotificationIOS_getAlert = pushNotificationIOS.getAlert;
exports.pushNotificationIOS_getAlert = function(o){
    return function(){
        return pushNotificationIOS_getAlert();
    };
};

var pushNotificationIOS_getBadgeCount = pushNotificationIOS.getBadgeCount;
exports.pushNotificationIOS_getBadgeCount = function(o){
    return function(){
        return pushNotificationIOS_getBadgeCount();
    };
};


var pushNotificationIOS_getData = pushNotificationIOS.getData;
exports.pushNotificationIOS_getData = function(o){
    return function(){
        return pushNotificationIOS_getData();
    };
};


var settings = require('react-native').Settings;
var settings_get = settings.get;
exports.settings_get = function(key){
    return function(){
        return settings_get(key);
    };
};


var settings_set = settings.set;
exports.settings_set = function(settings){
    return function(){
        return settings_set(settings);
    };
};


var settings_watchKeys = settings.watchKeys;
exports.settings_watchKeys = function(keys){
    return function(callback){
        return function(){
            return settings_watchKeys(keys,callback);
        };
    };
};


var settings_clearWatch = settings.clearWatch;
exports.settings_clearWatch = function(watchId){
    return function(){
        return settings_clearWatch(watchId);
    };
};




var statusBarIOS = require('react-native').StatusBarIOS;


var styleSheet = require('react-native').StyleSheet;
var styleSheet_create = styleSheet.create;
exports.styleSheet_create = function(obj){
    return function(){
        return styleSheet_create(obj);
    };
};


var systrace = require('react-native').Systrace;
var systrace_setEnabled = systrace.setEnabled;
exports.systrace_setEnabled = function(enabled){
    return function(){
        return systrace_setEnabled(enabled);
    };
};


var systrace_beginEvent = systrace.beginEvent;
exports.systrace_beginEvent = function(profileName){
    return function(args){
        return function(){
            return systrace_beginEvent(profileName,args);
        };
    };
};


var systrace_endEvent = systrace.endEvent;
exports.systrace_endEvent = function(o){
    return function(){
        return systrace_endEvent();
    };
};


var systrace_beginAsyncEvent = systrace.beginAsyncEvent;
exports.systrace_beginAsyncEvent = function(profileName){
    return function(){
        return systrace_beginAsyncEvent(profileName);
    };
};


var systrace_endAsyncEvent = systrace.endAsyncEvent;
exports.systrace_endAsyncEvent = function(profileName){
    return function(cookie){
        return function(){
            return systrace_endAsyncEvent(profileName,cookie);
        };
    };
};


var systrace_counterEvent = systrace.counterEvent;
exports.systrace_counterEvent = function(profileName){
    return function(value){
        return function(){
            return systrace_counterEvent(profileName,value);
        };
    };
};


var systrace_attachToRelayProfiler = systrace.attachToRelayProfiler;
exports.systrace_attachToRelayProfiler = function(relayProfiler){
    return function(){
        return systrace_attachToRelayProfiler(relayProfiler);
    };
};


var systrace_swizzleJSON = systrace.swizzleJSON;
exports.systrace_swizzleJSON = function(o){
    return function(){
        return systrace_swizzleJSON();
    };
};


var systrace_measureMethods = systrace.measureMethods;
exports.systrace_measureMethods = function(object){
    return function(objectName){
        return function(methodNames){
            return function(){
                return systrace_measureMethods(object, objectName, methodNames);
            };
        };
    };
};


var systrace_measure = systrace.measure;
exports.systrace_measure = function(objName){
    return function(fnName){
        return function(func){
            return function(){
                return systrace_measure(objName, fnName, func);
            };
        };
    };
};


var timePickerAndroid = require('react-native').TimePickerAndroid;
var timePickerAndroid_open = timePickerAndroid.open;
exports.timePickerAndroid_open = function(options){
    return function(){
        return timePickerAndroid_open(options);
    };
};


var timePickerAndroid_timeSetAction = timePickerAndroid.timeSetAction;
exports.timePickerAndroid_timeSetAction = function(o){
    return function(){
        return timePickerAndroid_timeSetAction();
    };
};


var timePickerAndroid_dismissedAction = timePickerAndroid.dismissedAction;
exports.timePickerAndroid_dismissedAction = function(o){
    return function(){
        return timePickerAndroid_dismissedAction();
    };
};


var toastAndroid = require('react-native').ToastAndroid;
var toastAndroid_show = toastAndroid.show;
exports.toastAndroid_show = function(message){
    return function(duration){
        return function(){
            return toastAndroid_show(message,duration);
        };
    };
};


var toastAndroid_showWithGravity = toastAndroid.showWithGravity;
exports.toastAndroid_showWithGravity = function(message){
    return function(duration){
        return function(gravity){
            return function(){
                return toastAndroid_showWithGravity(message, duration, gravity);
            };
        };
    };
};


var vibration = require('react-native').Vibration;
var vibration_vibrate = vibration.vibrate;
exports.vibration_vibrate = function(pattern){
    return function(repeat){
        return function(){
            return vibration_vibrate(pattern, repeat);
        };
    };
};


var vibration_cancel = vibration.cancel;
exports.vibration_cancel = function(o){
    return function(){
        return vibration_cancel();
    };
};
