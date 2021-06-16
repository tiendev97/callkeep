//@dart=2.9
import 'package:callkeep/callkeep.dart';

import 'event.dart';

class CallKeepDidReceiveStartCallAction extends EventType {
  CallKeepDidReceiveStartCallAction();
  CallKeepDidReceiveStartCallAction.fromMap(Map<dynamic, dynamic> arguments)
      : callUUID = arguments['callUUID'] as String,
        handle = arguments['handle'] as String,
        name = arguments['name'] as String;
  String callUUID;
  String handle;
  String name;
}

class CallKeepPerformAnswerCallAction extends EventType {
  CallKeepPerformAnswerCallAction();
  CallKeepPerformAnswerCallAction.fromMap(Map<dynamic, dynamic> arguments)
      : callUUID = arguments['callUUID'] as String;
  String callUUID;
}

class CallKeepPerformEndCallAction extends EventType {
  CallKeepPerformEndCallAction();
  CallKeepPerformEndCallAction.fromMap(Map<dynamic, dynamic> arguments)
      : callUUID = arguments['callUUID'] as String;
  String callUUID;
}

class CallKeepDidActivateAudioSession extends EventType {
  CallKeepDidActivateAudioSession();
}

class CallKeepDidDeactivateAudioSession extends EventType {
  CallKeepDidDeactivateAudioSession();
}

class CallKeepDidDisplayIncomingCall extends EventType {
  CallKeepDidDisplayIncomingCall();
  CallKeepDidDisplayIncomingCall.fromMap(Map<dynamic, dynamic> arguments)
      : callUUID = arguments['callUUID'] as String,
        handle = arguments['handle'] as String,
        localizedCallerName = arguments['localizedCallerName'] as String,
        hasVideo = arguments['hasVideo'] as bool,
        fromPushKit = arguments['fromPushKit'] as bool,
        payload = arguments['payload'] as Map;
  String callUUID;
  String handle;
  String localizedCallerName;
  bool hasVideo;
  bool fromPushKit;
  Map<dynamic, dynamic> payload;
}

class CallKeepDidPerformSetMutedCallAction extends EventType {
  CallKeepDidPerformSetMutedCallAction();
  CallKeepDidPerformSetMutedCallAction.fromMap(Map<dynamic, dynamic> arguments)
      : callUUID = arguments['callUUID'] as String,
        muted = arguments['muted'] as bool;
  String callUUID;
  bool muted;
}

class CallKeepDidToggleHoldAction extends EventType {
  CallKeepDidToggleHoldAction();
  CallKeepDidToggleHoldAction.fromMap(Map<dynamic, dynamic> arguments)
      : callUUID = arguments['callUUID'] as String,
        hold = arguments['hold'] as bool;
  String callUUID;
  bool hold;
}

class CallKeepDidPerformDTMFAction extends EventType {
  CallKeepDidPerformDTMFAction();
  CallKeepDidPerformDTMFAction.fromMap(Map<dynamic, dynamic> arguments)
      : callUUID = arguments['callUUID'] as String,
        digits = arguments['digits'] as String;
  String callUUID;
  String digits;
}

class CallKeepProviderReset extends EventType {
  CallKeepProviderReset();
}

class CallKeepCheckReachability extends EventType {
  CallKeepCheckReachability();
}

class CallKeepDidLoadWithEvents extends EventType {
  CallKeepDidLoadWithEvents();
}

class CallKeepReceivePushVOIP extends EventType {
  CallKeepReceivePushVOIP();
  CallKeepReceivePushVOIP.fromMap(Map<dynamic, dynamic> arguments)
      : payload = arguments['payload'] as Map;
  Map<dynamic, dynamic> payload;
}

class CallKeepGetTokenVOIP extends EventType {
  CallKeepGetTokenVOIP();
  CallKeepGetTokenVOIP.fromMap(Map<dynamic, dynamic> arguments)
      : token = arguments['token'] as String;
  String token;
}
