// import 'dart:io';
// import '../push_notifications_manager.dart';

// class MessageAdapter {
//   static const String TAG = '[MessageAdapter]';

//   IMessage incomingNotificationToMessage(Map<String, dynamic> messageMap) {
//     MessageDto message;

//     if (Platform.isAndroid) {
//       if (messageMap[PushNotificationsConsts.notification] != null &&
//           messageMap[PushNotificationsConsts.notification][PushNotificationsConsts.data] != null) {
//         message = MessageDto.fromJson(
//           messageMap[PushNotificationsConsts.notification][PushNotificationsConsts.data],
//         );
//       }
//     }

//     if (Platform.isIOS) {
//       if (messageMap[PushNotificationsConsts.aps] != null && messageMap[PushNotificationsConsts.aps][PushNotificationsConsts.data] != null) {
//         message = MessageDto.fromJson(
//           messageMap[PushNotificationsConsts.aps][PushNotificationsConsts.data],
//         );
//       }
//     }

//     return Message(
//       id: message.id,
//       title: message.title,
//       content: message.body,
//       imageUrl: message.image,
//       type: message.type,
//     );
//   }
// }
