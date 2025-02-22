// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unused_import, unnecessary_cast

library googleapis.fcm.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client fcm/v1';

/// FCM send API that provides a cross-platform messaging solution to reliably
/// deliver messages at no cost.
class FcmApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  final commons.ApiRequester _requester;

  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);

  FcmApi(http.Client client,
      {core.String rootUrl = "https://fcm.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsMessagesResourceApi get messages =>
      new ProjectsMessagesResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : _requester = client;
}

class ProjectsMessagesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsMessagesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Send a message to specified target (a registration token, topic
  /// or condition).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. It contains the Firebase project id (i.e. the unique
  /// identifier
  /// for your Firebase project), in the format of `projects/{project_id}`.
  /// For legacy support, the numeric project number with no padding is also
  /// supported in the format of `projects/{project_number}`.
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Message].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Message> send(SendMessageRequest request, core.String parent,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/messages:send';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Message.fromJson(data));
  }
}

/// Android specific options for messages sent through
/// [FCM connection server](https://goo.gl/4GLdUl).
class AndroidConfig {
  /// An identifier of a group of messages that can be collapsed, so that only
  /// the last message gets sent when delivery can be resumed. A maximum of 4
  /// different collapse keys is allowed at any given time.
  core.String collapseKey;

  /// Arbitrary key/value payload. If present, it will override
  /// google.firebase.fcm.v1.Message.data.
  core.Map<core.String, core.String> data;

  /// Options for features provided by the FCM SDK for Android.
  AndroidFcmOptions fcmOptions;

  /// Notification to send to android devices.
  AndroidNotification notification;

  /// Message priority. Can take "normal" and "high" values.
  /// For more information, see [Setting the priority of a
  /// message](https://goo.gl/GjONJv).
  /// Possible string values are:
  /// - "NORMAL" : Default priority for data messages. Normal priority messages
  /// won't open
  /// network connections on a sleeping device, and their delivery may be
  /// delayed to conserve the battery. For less time-sensitive messages, such
  /// as notifications of new email or other data to sync, choose normal
  /// delivery priority.
  /// - "HIGH" : Default priority for notification messages. FCM attempts to
  /// deliver high
  /// priority messages immediately, allowing the FCM service to wake a
  /// sleeping device when possible and open a network connection to your app
  /// server. Apps with instant messaging, chat, or voice call alerts, for
  /// example, generally need to open a network connection and make sure FCM
  /// delivers the message to the device without delay. Set high priority if
  /// the message is time-critical and requires the user's immediate
  /// interaction, but beware that setting your messages to high priority
  /// contributes more to battery drain compared with normal priority messages.
  core.String priority;

  /// Package name of the application where the registration token must match in
  /// order to receive the message.
  core.String restrictedPackageName;

  /// How long (in seconds) the message should be kept in FCM storage if the
  /// device is offline. The maximum time to live supported is 4 weeks, and the
  /// default value is 4 weeks if not set. Set it to 0 if want to send the
  /// message immediately.
  /// In JSON format, the Duration type is encoded as a string rather than an
  /// object, where the string ends in the suffix "s" (indicating seconds) and
  /// is preceded by the number of seconds, with nanoseconds expressed as
  /// fractional seconds. For example, 3 seconds with 0 nanoseconds should be
  /// encoded in JSON format as "3s", while 3 seconds and 1 nanosecond should
  /// be expressed in JSON format as "3.000000001s". The ttl will be rounded
  /// down
  /// to the nearest second.
  core.String ttl;

  AndroidConfig();

  AndroidConfig.fromJson(core.Map _json) {
    if (_json.containsKey("collapseKey")) {
      collapseKey = _json["collapseKey"];
    }
    if (_json.containsKey("data")) {
      data = (_json["data"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("fcmOptions")) {
      fcmOptions = new AndroidFcmOptions.fromJson(_json["fcmOptions"]);
    }
    if (_json.containsKey("notification")) {
      notification = new AndroidNotification.fromJson(_json["notification"]);
    }
    if (_json.containsKey("priority")) {
      priority = _json["priority"];
    }
    if (_json.containsKey("restrictedPackageName")) {
      restrictedPackageName = _json["restrictedPackageName"];
    }
    if (_json.containsKey("ttl")) {
      ttl = _json["ttl"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (collapseKey != null) {
      _json["collapseKey"] = collapseKey;
    }
    if (data != null) {
      _json["data"] = data;
    }
    if (fcmOptions != null) {
      _json["fcmOptions"] = (fcmOptions).toJson();
    }
    if (notification != null) {
      _json["notification"] = (notification).toJson();
    }
    if (priority != null) {
      _json["priority"] = priority;
    }
    if (restrictedPackageName != null) {
      _json["restrictedPackageName"] = restrictedPackageName;
    }
    if (ttl != null) {
      _json["ttl"] = ttl;
    }
    return _json;
  }
}

/// Options for features provided by the FCM SDK for Android.
class AndroidFcmOptions {
  /// Label associated with the message's analytics data.
  core.String analyticsLabel;

  AndroidFcmOptions();

  AndroidFcmOptions.fromJson(core.Map _json) {
    if (_json.containsKey("analyticsLabel")) {
      analyticsLabel = _json["analyticsLabel"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (analyticsLabel != null) {
      _json["analyticsLabel"] = analyticsLabel;
    }
    return _json;
  }
}

/// Notification to send to android devices.
class AndroidNotification {
  /// The notification's body text. If present, it will override
  /// google.firebase.fcm.v1.Notification.body.
  core.String body;

  /// Variable string values to be used in place of the format specifiers in
  /// body_loc_key to use to localize the body text to the user's current
  /// localization.
  /// See [Formatting and Styling](https://goo.gl/MalYE3) for more information.
  core.List<core.String> bodyLocArgs;

  /// The key to the body string in the app's string resources to use to
  /// localize
  /// the body text to the user's current localization.
  /// See [String Resources](https://goo.gl/NdFZGI) for more information.
  core.String bodyLocKey;

  /// The [notification's channel
  /// id](https://developer.android.com/guide/topics/ui/notifiers/notifications#ManageChannels)
  /// (new in Android O). The app must create a channel with this channel ID
  /// before any notification with this channel ID is received. If you don't
  /// send
  /// this channel ID in the request, or if the channel ID provided has not yet
  /// been created by the app, FCM uses the channel ID specified in the app
  /// manifest.
  core.String channelId;

  /// The action associated with a user click on the notification.
  /// If specified, an activity with a matching intent filter is launched when
  /// a user clicks on the notification.
  core.String clickAction;

  /// The notification's icon color, expressed in #rrggbb format.
  core.String color;

  /// If set to true, use the Android framework's default LED light settings for
  /// the notification. Default values are specified in
  /// [config.xml](https://android.googlesource.com/platform/frameworks/base/+/master/core/res/res/values/config.xml).
  /// If `default_light_settings` is set to true and `light_settings` is also
  /// set, the user-specified `light_settings` is used instead of the
  /// default value.
  core.bool defaultLightSettings;

  /// If set to true, use the Android framework's default sound for the
  /// notification. Default values are specified in
  /// [config.xml](https://android.googlesource.com/platform/frameworks/base/+/master/core/res/res/values/config.xml).
  core.bool defaultSound;

  /// If set to true, use the Android framework's default vibrate pattern for
  /// the
  /// notification. Default values are specified in
  /// [config.xml](https://android.googlesource.com/platform/frameworks/base/+/master/core/res/res/values/config.xml).
  /// If `default_vibrate_timings` is set to true and `vibrate_timings` is also
  /// set, the default value is used instead of the user-specified
  /// `vibrate_timings`.
  core.bool defaultVibrateTimings;

  /// Set the time that the event in the notification occurred. Notifications in
  /// the panel are sorted by this time. A point in time is represented using
  /// [protobuf.Timestamp](https://developers.google.com/protocol-buffers/docs/reference/java/com/google/protobuf/Timestamp).
  core.String eventTime;

  /// The notification's icon.
  /// Sets the notification icon to myicon for drawable resource myicon.
  /// If you don't send this key in the request, FCM displays the launcher icon
  /// specified in your app manifest.
  core.String icon;

  /// Contains the URL of an image that is going to be displayed in a
  /// notification. If present, it will override
  /// google.firebase.fcm.v1.Notification.image.
  core.String image;

  /// Settings to control the notification's LED blinking rate and color if LED
  /// is available on the device. The total blinking time is controlled by the
  /// OS.
  LightSettings lightSettings;

  /// Set whether or not this notification is relevant only to the current
  /// device. Some notifications can be bridged to other devices for remote
  /// display, such as a Wear OS watch. This hint can be set to recommend this
  /// notification not be bridged. See [Wear OS
  /// guides](https://developer.android.com/training/wearables/notifications/bridger#existing-method-of-preventing-bridging)
  core.bool localOnly;

  /// Sets the number of items this notification represents. May be displayed as
  /// a badge count for launchers that support badging.See [Notification
  /// Badge](https://developer.android.com/training/notify-user/badges).
  /// For example, this might be useful if you're using just one notification to
  /// represent multiple new messages but you want the count here to represent
  /// the number of total new messages.
  /// If zero or unspecified, systems that support badging use the default,
  /// which
  /// is to increment a number displayed on the long-press menu each time a new
  /// notification arrives.
  core.int notificationCount;

  /// Set the relative priority for this notification. Priority is an indication
  /// of how much of the user's attention should be consumed by this
  /// notification. Low-priority notifications may be hidden from the user in
  /// certain situations, while the user might be interrupted for a
  /// higher-priority notification. The effect of setting the same priorities
  /// may
  /// differ slightly on different platforms. Note this priority differs from
  /// `AndroidMessagePriority`. This priority is processed by the client after
  /// the message has been delivered, whereas
  /// [AndroidMessagePriority](https://firebase.google.com/docs/reference/fcm/rest/v1/projects.messages#androidmessagepriority)
  /// is an FCM concept that controls when the message is delivered.
  /// Possible string values are:
  /// - "PRIORITY_UNSPECIFIED" : If priority is unspecified, notification
  /// priority is set to
  /// `PRIORITY_DEFAULT`.
  /// - "PRIORITY_MIN" : Lowest notification priority. Notifications with this
  /// `PRIORITY_MIN`
  /// might not be shown to the user except under special circumstances,
  /// such as detailed notification logs.
  /// - "PRIORITY_LOW" : Lower notification priority. The UI may choose to show
  /// the notifications
  /// smaller, or at a different position in the list, compared with
  /// notifications with `PRIORITY_DEFAULT`.
  /// - "PRIORITY_DEFAULT" : Default notification priority. If the application
  /// does not prioritize its
  /// own notifications, use this value for all notifications.
  /// - "PRIORITY_HIGH" : Higher notification priority. Use this for more
  /// important notifications
  /// or alerts. The UI may choose to show these notifications larger, or at a
  /// different position in the notification lists, compared with notifications
  /// with `PRIORITY_DEFAULT`.
  /// - "PRIORITY_MAX" : Highest notification priority. Use this for the
  /// application's most
  /// important items that require the user's prompt attention or input.
  core.String notificationPriority;

  /// The sound to play when the device receives the notification.
  /// Supports "default" or the filename of a sound resource bundled in the app.
  /// Sound files must reside in /res/raw/.
  core.String sound;

  /// When set to false or unset, the notification is automatically
  /// dismissed when the user clicks it in the panel. When set to true, the
  /// notification persists even when the user clicks it.
  core.bool sticky;

  /// Identifier used to replace existing notifications in the notification
  /// drawer.
  /// If not specified, each request creates a new notification.
  /// If specified and a notification with the same tag is already being shown,
  /// the new notification replaces the existing one in the notification drawer.
  core.String tag;

  /// Sets the "ticker" text, which is sent to accessibility services.
  /// Prior to API level 21 (`Lollipop`), sets the text that is displayed in the
  /// status bar when the notification first arrives.
  core.String ticker;

  /// The notification's title. If present, it will override
  /// google.firebase.fcm.v1.Notification.title.
  core.String title;

  /// Variable string values to be used in place of the format specifiers in
  /// title_loc_key to use to localize the title text to the user's current
  /// localization.
  /// See [Formatting and Styling](https://goo.gl/MalYE3) for more information.
  core.List<core.String> titleLocArgs;

  /// The key to the title string in the app's string resources to use to
  /// localize the title text to the user's current localization.
  /// See [String Resources](https://goo.gl/NdFZGI) for more information.
  core.String titleLocKey;

  /// Set the vibration pattern to use. Pass in an array of
  /// [protobuf.Duration](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#google.protobuf.Duration)
  /// to turn on or off the vibrator. The first value indicates the `Duration`
  /// to
  /// wait before turning the vibrator on. The next value indicates the
  /// `Duration` to keep the vibrator on. Subsequent values alternate between
  /// `Duration` to turn the vibrator off and to turn the vibrator on.
  /// If `vibrate_timings` is set and `default_vibrate_timings` is set to
  /// `true`,
  /// the default value is used instead of the user-specified `vibrate_timings`.
  core.List<core.String> vibrateTimings;

  /// Set the
  /// [Notification.visibility](https://developer.android.com/reference/android/app/Notification.html#visibility)
  /// of the notification.
  /// Possible string values are:
  /// - "VISIBILITY_UNSPECIFIED" : If unspecified, default to
  /// `Visibility.PRIVATE`.
  /// - "PRIVATE" : Show this notification on all lockscreens, but conceal
  /// sensitive or
  /// private information on secure lockscreens.
  /// - "PUBLIC" : Show this notification in its entirety on all lockscreens.
  /// - "SECRET" : Do not reveal any part of this notification on a secure
  /// lockscreen.
  core.String visibility;

  AndroidNotification();

  AndroidNotification.fromJson(core.Map _json) {
    if (_json.containsKey("body")) {
      body = _json["body"];
    }
    if (_json.containsKey("bodyLocArgs")) {
      bodyLocArgs = (_json["bodyLocArgs"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("bodyLocKey")) {
      bodyLocKey = _json["bodyLocKey"];
    }
    if (_json.containsKey("channelId")) {
      channelId = _json["channelId"];
    }
    if (_json.containsKey("clickAction")) {
      clickAction = _json["clickAction"];
    }
    if (_json.containsKey("color")) {
      color = _json["color"];
    }
    if (_json.containsKey("defaultLightSettings")) {
      defaultLightSettings = _json["defaultLightSettings"];
    }
    if (_json.containsKey("defaultSound")) {
      defaultSound = _json["defaultSound"];
    }
    if (_json.containsKey("defaultVibrateTimings")) {
      defaultVibrateTimings = _json["defaultVibrateTimings"];
    }
    if (_json.containsKey("eventTime")) {
      eventTime = _json["eventTime"];
    }
    if (_json.containsKey("icon")) {
      icon = _json["icon"];
    }
    if (_json.containsKey("image")) {
      image = _json["image"];
    }
    if (_json.containsKey("lightSettings")) {
      lightSettings = new LightSettings.fromJson(_json["lightSettings"]);
    }
    if (_json.containsKey("localOnly")) {
      localOnly = _json["localOnly"];
    }
    if (_json.containsKey("notificationCount")) {
      notificationCount = _json["notificationCount"];
    }
    if (_json.containsKey("notificationPriority")) {
      notificationPriority = _json["notificationPriority"];
    }
    if (_json.containsKey("sound")) {
      sound = _json["sound"];
    }
    if (_json.containsKey("sticky")) {
      sticky = _json["sticky"];
    }
    if (_json.containsKey("tag")) {
      tag = _json["tag"];
    }
    if (_json.containsKey("ticker")) {
      ticker = _json["ticker"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
    if (_json.containsKey("titleLocArgs")) {
      titleLocArgs = (_json["titleLocArgs"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("titleLocKey")) {
      titleLocKey = _json["titleLocKey"];
    }
    if (_json.containsKey("vibrateTimings")) {
      vibrateTimings =
          (_json["vibrateTimings"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("visibility")) {
      visibility = _json["visibility"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (body != null) {
      _json["body"] = body;
    }
    if (bodyLocArgs != null) {
      _json["bodyLocArgs"] = bodyLocArgs;
    }
    if (bodyLocKey != null) {
      _json["bodyLocKey"] = bodyLocKey;
    }
    if (channelId != null) {
      _json["channelId"] = channelId;
    }
    if (clickAction != null) {
      _json["clickAction"] = clickAction;
    }
    if (color != null) {
      _json["color"] = color;
    }
    if (defaultLightSettings != null) {
      _json["defaultLightSettings"] = defaultLightSettings;
    }
    if (defaultSound != null) {
      _json["defaultSound"] = defaultSound;
    }
    if (defaultVibrateTimings != null) {
      _json["defaultVibrateTimings"] = defaultVibrateTimings;
    }
    if (eventTime != null) {
      _json["eventTime"] = eventTime;
    }
    if (icon != null) {
      _json["icon"] = icon;
    }
    if (image != null) {
      _json["image"] = image;
    }
    if (lightSettings != null) {
      _json["lightSettings"] = (lightSettings).toJson();
    }
    if (localOnly != null) {
      _json["localOnly"] = localOnly;
    }
    if (notificationCount != null) {
      _json["notificationCount"] = notificationCount;
    }
    if (notificationPriority != null) {
      _json["notificationPriority"] = notificationPriority;
    }
    if (sound != null) {
      _json["sound"] = sound;
    }
    if (sticky != null) {
      _json["sticky"] = sticky;
    }
    if (tag != null) {
      _json["tag"] = tag;
    }
    if (ticker != null) {
      _json["ticker"] = ticker;
    }
    if (title != null) {
      _json["title"] = title;
    }
    if (titleLocArgs != null) {
      _json["titleLocArgs"] = titleLocArgs;
    }
    if (titleLocKey != null) {
      _json["titleLocKey"] = titleLocKey;
    }
    if (vibrateTimings != null) {
      _json["vibrateTimings"] = vibrateTimings;
    }
    if (visibility != null) {
      _json["visibility"] = visibility;
    }
    return _json;
  }
}

/// [Apple Push Notification Service](https://goo.gl/MXRTPa) specific options.
class ApnsConfig {
  /// Options for features provided by the FCM SDK for iOS.
  ApnsFcmOptions fcmOptions;

  /// HTTP request headers defined in Apple Push Notification Service. Refer to
  /// [APNs request headers](https://goo.gl/C6Yhia) for
  /// supported headers, e.g. "apns-priority": "10".
  core.Map<core.String, core.String> headers;

  /// APNs payload as a JSON object, including both `aps` dictionary and custom
  /// payload. See [Payload Key Reference](https://goo.gl/32Pl5W).
  /// If present, it overrides google.firebase.fcm.v1.Notification.title
  /// and google.firebase.fcm.v1.Notification.body.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> payload;

  ApnsConfig();

  ApnsConfig.fromJson(core.Map _json) {
    if (_json.containsKey("fcmOptions")) {
      fcmOptions = new ApnsFcmOptions.fromJson(_json["fcmOptions"]);
    }
    if (_json.containsKey("headers")) {
      headers = (_json["headers"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("payload")) {
      payload = (_json["payload"] as core.Map).cast<core.String, core.Object>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (fcmOptions != null) {
      _json["fcmOptions"] = (fcmOptions).toJson();
    }
    if (headers != null) {
      _json["headers"] = headers;
    }
    if (payload != null) {
      _json["payload"] = payload;
    }
    return _json;
  }
}

/// Options for features provided by the FCM SDK for iOS.
class ApnsFcmOptions {
  /// Label associated with the message's analytics data.
  core.String analyticsLabel;

  /// Contains the URL of an image that is going to be displayed in a
  /// notification. If present, it will override
  /// google.firebase.fcm.v1.Notification.image.
  core.String image;

  ApnsFcmOptions();

  ApnsFcmOptions.fromJson(core.Map _json) {
    if (_json.containsKey("analyticsLabel")) {
      analyticsLabel = _json["analyticsLabel"];
    }
    if (_json.containsKey("image")) {
      image = _json["image"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (analyticsLabel != null) {
      _json["analyticsLabel"] = analyticsLabel;
    }
    if (image != null) {
      _json["image"] = image;
    }
    return _json;
  }
}

/// Represents a color in the RGBA color space. This representation is designed
/// for simplicity of conversion to/from color representations in various
/// languages over compactness; for example, the fields of this representation
/// can be trivially provided to the constructor of "java.awt.Color" in Java; it
/// can also be trivially provided to UIColor's "+colorWithRed:green:blue:alpha"
/// method in iOS; and, with just a little work, it can be easily formatted into
/// a CSS "rgba()" string in JavaScript, as well.
///
/// Note: this proto does not carry information about the absolute color space
/// that should be used to interpret the RGB value (e.g. sRGB, Adobe RGB,
/// DCI-P3, BT.2020, etc.). By default, applications SHOULD assume the sRGB
/// color
/// space.
///
/// Example (Java):
///
///      import com.google.type.Color;
///
///      // ...
///      public static java.awt.Color fromProto(Color protocolor) {
///        float alpha = protocolor.hasAlpha()
///            ? protocolor.getAlpha().getValue()
///            : 1.0;
///
///        return new java.awt.Color(
///            protocolor.getRed(),
///            protocolor.getGreen(),
///            protocolor.getBlue(),
///            alpha);
///      }
///
///      public static Color toProto(java.awt.Color color) {
///        float red = (float) color.getRed();
///        float green = (float) color.getGreen();
///        float blue = (float) color.getBlue();
///        float denominator = 255.0;
///        Color.Builder resultBuilder =
///            Color
///                .newBuilder()
///                .setRed(red / denominator)
///                .setGreen(green / denominator)
///                .setBlue(blue / denominator);
///        int alpha = color.getAlpha();
///        if (alpha != 255) {
///          result.setAlpha(
///              FloatValue
///                  .newBuilder()
///                  .setValue(((float) alpha) / denominator)
///                  .build());
///        }
///        return resultBuilder.build();
///      }
///      // ...
///
/// Example (iOS / Obj-C):
///
///      // ...
///      static UIColor* fromProto(Color* protocolor) {
///         float red = [protocolor red];
///         float green = [protocolor green];
///         float blue = [protocolor blue];
///         FloatValue* alpha_wrapper = [protocolor alpha];
///         float alpha = 1.0;
///         if (alpha_wrapper != nil) {
///           alpha = [alpha_wrapper value];
///         }
/// return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
///      }
///
///      static Color* toProto(UIColor* color) {
///          CGFloat red, green, blue, alpha;
///          if (![color getRed:&red green:&green blue:&blue alpha:&alpha]) {
///            return nil;
///          }
///          Color* result = [[Color alloc] init];
///          [result setRed:red];
///          [result setGreen:green];
///          [result setBlue:blue];
///          if (alpha <= 0.9999) {
///            [result setAlpha:floatWrapperWithValue(alpha)];
///          }
///          [result autorelease];
///          return result;
///     }
///     // ...
///
///  Example (JavaScript):
///
///     // ...
///
///     var protoToCssColor = function(rgb_color) {
///        var redFrac = rgb_color.red || 0.0;
///        var greenFrac = rgb_color.green || 0.0;
///        var blueFrac = rgb_color.blue || 0.0;
///        var red = Math.floor(redFrac * 255);
///        var green = Math.floor(greenFrac * 255);
///        var blue = Math.floor(blueFrac * 255);
///
///        if (!('alpha' in rgb_color)) {
///           return rgbToCssColor_(red, green, blue);
///        }
///
///        var alphaFrac = rgb_color.alpha.value || 0.0;
///        var rgbParams = [red, green, blue].join(',');
///        return ['rgba(', rgbParams, ',', alphaFrac, ')'].join('');
///     };
///
///     var rgbToCssColor_ = function(red, green, blue) {
///       var rgbNumber = new Number((red << 16) | (green << 8) | blue);
///       var hexString = rgbNumber.toString(16);
///       var missingZeros = 6 - hexString.length;
///       var resultBuilder = ['#'];
///       for (var i = 0; i < missingZeros; i++) {
///          resultBuilder.push('0');
///       }
///       resultBuilder.push(hexString);
///       return resultBuilder.join('');
///     };
///
///     // ...
class Color {
  /// The fraction of this color that should be applied to the pixel. That is,
  /// the final pixel color is defined by the equation:
  ///
  ///   pixel color = alpha * (this color) + (1.0 - alpha) * (background color)
  ///
  /// This means that a value of 1.0 corresponds to a solid color, whereas
  /// a value of 0.0 corresponds to a completely transparent color. This
  /// uses a wrapper message rather than a simple float scalar so that it is
  /// possible to distinguish between a default value and the value being unset.
  /// If omitted, this color object is to be rendered as a solid color
  /// (as if the alpha value had been explicitly given with a value of 1.0).
  core.double alpha;

  /// The amount of blue in the color as a value in the interval [0, 1].
  core.double blue;

  /// The amount of green in the color as a value in the interval [0, 1].
  core.double green;

  /// The amount of red in the color as a value in the interval [0, 1].
  core.double red;

  Color();

  Color.fromJson(core.Map _json) {
    if (_json.containsKey("alpha")) {
      alpha = _json["alpha"].toDouble();
    }
    if (_json.containsKey("blue")) {
      blue = _json["blue"].toDouble();
    }
    if (_json.containsKey("green")) {
      green = _json["green"].toDouble();
    }
    if (_json.containsKey("red")) {
      red = _json["red"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (alpha != null) {
      _json["alpha"] = alpha;
    }
    if (blue != null) {
      _json["blue"] = blue;
    }
    if (green != null) {
      _json["green"] = green;
    }
    if (red != null) {
      _json["red"] = red;
    }
    return _json;
  }
}

/// Platform independent options for features provided by the FCM SDKs.
class FcmOptions {
  /// Label associated with the message's analytics data.
  core.String analyticsLabel;

  FcmOptions();

  FcmOptions.fromJson(core.Map _json) {
    if (_json.containsKey("analyticsLabel")) {
      analyticsLabel = _json["analyticsLabel"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (analyticsLabel != null) {
      _json["analyticsLabel"] = analyticsLabel;
    }
    return _json;
  }
}

/// Settings to control notification LED.
class LightSettings {
  /// Required. Set `color` of the LED with
  /// [google.type.Color](https://github.com/googleapis/googleapis/blob/master/google/type/color.proto).
  Color color;

  /// Required. Along with `light_on_duration `, define the blink rate of LED
  /// flashes. Resolution defined by
  /// [proto.Duration](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#google.protobuf.Duration)
  core.String lightOffDuration;

  /// Required. Along with `light_off_duration`, define the blink rate of LED
  /// flashes. Resolution defined by
  /// [proto.Duration](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#google.protobuf.Duration)
  core.String lightOnDuration;

  LightSettings();

  LightSettings.fromJson(core.Map _json) {
    if (_json.containsKey("color")) {
      color = new Color.fromJson(_json["color"]);
    }
    if (_json.containsKey("lightOffDuration")) {
      lightOffDuration = _json["lightOffDuration"];
    }
    if (_json.containsKey("lightOnDuration")) {
      lightOnDuration = _json["lightOnDuration"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (color != null) {
      _json["color"] = (color).toJson();
    }
    if (lightOffDuration != null) {
      _json["lightOffDuration"] = lightOffDuration;
    }
    if (lightOnDuration != null) {
      _json["lightOnDuration"] = lightOnDuration;
    }
    return _json;
  }
}

/// Message to send by Firebase Cloud Messaging Service.
class Message {
  /// Input only. Android specific options for messages sent through
  /// [FCM connection server](https://goo.gl/4GLdUl).
  AndroidConfig android;

  /// Input only. [Apple Push Notification Service](https://goo.gl/MXRTPa)
  /// specific options.
  ApnsConfig apns;

  /// Condition to send a message to,
  /// e.g. "'foo' in topics && 'bar' in topics".
  core.String condition;

  /// Input only. Arbitrary key/value payload.
  core.Map<core.String, core.String> data;

  /// Input only. Template for FCM SDK feature options to use across all
  /// platforms.
  FcmOptions fcmOptions;

  /// Output Only. The identifier of the message sent, in the format of
  /// `projects / * /messages/{message_id}`.
  core.String name;

  /// Input only. Basic notification template to use across all platforms.
  Notification notification;

  /// Registration token to send a message to.
  core.String token;

  /// Topic name to send a message to, e.g. "weather".
  /// Note: "/topics/" prefix should not be provided.
  core.String topic;

  /// Input only. [Webpush protocol](https://tools.ietf.org/html/rfc8030)
  /// options.
  WebpushConfig webpush;

  Message();

  Message.fromJson(core.Map _json) {
    if (_json.containsKey("android")) {
      android = new AndroidConfig.fromJson(_json["android"]);
    }
    if (_json.containsKey("apns")) {
      apns = new ApnsConfig.fromJson(_json["apns"]);
    }
    if (_json.containsKey("condition")) {
      condition = _json["condition"];
    }
    if (_json.containsKey("data")) {
      data = (_json["data"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("fcmOptions")) {
      fcmOptions = new FcmOptions.fromJson(_json["fcmOptions"]);
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("notification")) {
      notification = new Notification.fromJson(_json["notification"]);
    }
    if (_json.containsKey("token")) {
      token = _json["token"];
    }
    if (_json.containsKey("topic")) {
      topic = _json["topic"];
    }
    if (_json.containsKey("webpush")) {
      webpush = new WebpushConfig.fromJson(_json["webpush"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (android != null) {
      _json["android"] = (android).toJson();
    }
    if (apns != null) {
      _json["apns"] = (apns).toJson();
    }
    if (condition != null) {
      _json["condition"] = condition;
    }
    if (data != null) {
      _json["data"] = data;
    }
    if (fcmOptions != null) {
      _json["fcmOptions"] = (fcmOptions).toJson();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (notification != null) {
      _json["notification"] = (notification).toJson();
    }
    if (token != null) {
      _json["token"] = token;
    }
    if (topic != null) {
      _json["topic"] = topic;
    }
    if (webpush != null) {
      _json["webpush"] = (webpush).toJson();
    }
    return _json;
  }
}

/// Basic notification template to use across all platforms.
class Notification {
  /// The notification's body text.
  core.String body;

  /// Contains the URL of an image that is going to be downloaded on the device
  /// and displayed in a notification.
  /// JPEG, PNG, BMP have full support across platforms. Animated GIF and video
  /// only work on iOS. WebP and HEIF have varying levels of support across
  /// platforms and platform versions.
  /// Android has 1MB image size limit.
  /// Quota usage and implications/costs for hosting image on Firebase Storage:
  /// https://firebase.google.com/pricing
  core.String image;

  /// The notification's title.
  core.String title;

  Notification();

  Notification.fromJson(core.Map _json) {
    if (_json.containsKey("body")) {
      body = _json["body"];
    }
    if (_json.containsKey("image")) {
      image = _json["image"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (body != null) {
      _json["body"] = body;
    }
    if (image != null) {
      _json["image"] = image;
    }
    if (title != null) {
      _json["title"] = title;
    }
    return _json;
  }
}

/// Request to send a message to specified target.
class SendMessageRequest {
  /// Required. Message to send.
  Message message;

  /// Flag for testing the request without actually delivering the message.
  core.bool validateOnly;

  SendMessageRequest();

  SendMessageRequest.fromJson(core.Map _json) {
    if (_json.containsKey("message")) {
      message = new Message.fromJson(_json["message"]);
    }
    if (_json.containsKey("validateOnly")) {
      validateOnly = _json["validateOnly"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (message != null) {
      _json["message"] = (message).toJson();
    }
    if (validateOnly != null) {
      _json["validateOnly"] = validateOnly;
    }
    return _json;
  }
}

/// [Webpush protocol](https://tools.ietf.org/html/rfc8030) options.
class WebpushConfig {
  /// Arbitrary key/value payload. If present, it will override
  /// google.firebase.fcm.v1.Message.data.
  core.Map<core.String, core.String> data;

  /// Options for features provided by the FCM SDK for Web.
  WebpushFcmOptions fcmOptions;

  /// HTTP headers defined in webpush protocol. Refer to
  /// [Webpush protocol](https://tools.ietf.org/html/rfc8030#section-5) for
  /// supported headers, e.g. "TTL": "15".
  core.Map<core.String, core.String> headers;

  /// Web Notification options as a JSON object. Supports Notification instance
  /// properties as defined in [Web Notification
  /// API](https://developer.mozilla.org/en-US/docs/Web/API/Notification). If
  /// present, "title" and "body" fields override
  /// [google.firebase.fcm.v1.Notification.title] and
  /// [google.firebase.fcm.v1.Notification.body].
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> notification;

  WebpushConfig();

  WebpushConfig.fromJson(core.Map _json) {
    if (_json.containsKey("data")) {
      data = (_json["data"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("fcmOptions")) {
      fcmOptions = new WebpushFcmOptions.fromJson(_json["fcmOptions"]);
    }
    if (_json.containsKey("headers")) {
      headers = (_json["headers"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("notification")) {
      notification =
          (_json["notification"] as core.Map).cast<core.String, core.Object>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (data != null) {
      _json["data"] = data;
    }
    if (fcmOptions != null) {
      _json["fcmOptions"] = (fcmOptions).toJson();
    }
    if (headers != null) {
      _json["headers"] = headers;
    }
    if (notification != null) {
      _json["notification"] = notification;
    }
    return _json;
  }
}

/// Options for features provided by the FCM SDK for Web.
class WebpushFcmOptions {
  /// The link to open when the user clicks on the notification.
  /// For all URL values, HTTPS is required.
  core.String link;

  WebpushFcmOptions();

  WebpushFcmOptions.fromJson(core.Map _json) {
    if (_json.containsKey("link")) {
      link = _json["link"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (link != null) {
      _json["link"] = link;
    }
    return _json;
  }
}
