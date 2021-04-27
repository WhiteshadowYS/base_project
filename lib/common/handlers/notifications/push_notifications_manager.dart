// import 'package:logging/logging.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import './res/consts.dart';
// import './models/message.dart';
// import './shared/message_adapter.dart';

// export './res/consts.dart';
// export './models/message.dart';
// export './interfaces/i_message.dart';
// export './models/dtos/message_dto.dart';
// export './shared/message_adapter.dart';

// /// [PushNotificationsManager] it is service for control dialogs.
// /// This class it - Singleton, for function using use [PushNotificationsManager.instance]
// /// - For init service use method [init] in [PushNotificationsManager].
// /// - For get get FCM token you can use [getFCMToken] getter.
// /// - For get unread messages you can use [getUnreadNotificationsList] getter.
// /// - For clear unread messages you can use [clearUnreadNotificationsList] method.
// class PushNotificationsManager {
//   Logger get logger => Logger('$runtimeType');

//   PushNotificationsManager._privateConstructor();

//   static final PushNotificationsManager _instance = PushNotificationsManager._privateConstructor();

//   static PushNotificationsManager get instance => _instance;

//   final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

//   /// A variable that stores all [Message] received
//   /// when the application is turned off or roll upped.
//   final List<Message> _unreadNotificationsList = [];

//   /// A variable that stores current [Message] message.
//   /// It is necessary to check the following message for duplicate
//   Message _currentMessage;

//   /// A [String] type getter that returns current [_firebaseMessaging] token
//   Future<String> get getFCMToken async => await _firebaseMessaging.getToken();

//   /// A [Message] type getter that returns current [_unreadNotificationsList]
//   List<Message> get getUnreadNotificationsList => _unreadNotificationsList;

//   // region [_onAllMessages]
//   /// [_onAllMessage] used for type and duplicate test
//   /// Works if [type] not equals to [_currentMessage] id
//   /// or id of any [_unreadNotificationsList] notification
//   /// If type of received notification [ON_RESUME] or [ON_LAUNCH] save
//   /// notification to [_unreadNotificationsList]
//   /// In other cases use [_handleCurrentMessage] to do
//   /// something you need with received [Message]
//   // ignore: missing_return
//   Future<void> _onAllMessages(Message message, String type, {void Function(Message) dialogCallback}) {
//     logger.info('<_onAllMessages> => message: ${message.id}');
//     if (message.id == PushNotificationsConsts.epmtyString ||
//         (_currentMessage?.id != message.id && _unreadNotificationsList.indexWhere((e) => e.id == message.id) == -1)) {
//       _currentMessage = message;

//       if (type == PushNotificationsConsts.onResume || type == PushNotificationsConsts.onLaunch) {
//         _unreadNotificationsList.add(message);
//       }

//       _handleCurrentMessage(message, dialogCallback: dialogCallback);
//     }
//   }
//   // endregion

//   // region [initialise]
//   /// [init] method used to initialize [_firebaseMessaging].
//   /// [onMessage] configuration used to receive [message] if opened app
//   /// [onLaunch] configuration used to receive [message] if closed app
//   /// [onResume] configuration used to receive [message] if rolled up app
//   void init({void Function(Message) dialogCallback}) async {
//     try {
//       if (await _firebaseMessaging.autoInitEnabled() == false) {
//         await _firebaseMessaging.setAutoInitEnabled(true);
//       }

//       final MessageAdapter _adapter = MessageAdapter();

//       _firebaseMessaging.configure(
//         onMessage: (Map<String, dynamic> message) {
//           return _onAllMessages(
//             _adapter.incomingNotificationToMessage(message),
//             PushNotificationsConsts.onMessage,
//             dialogCallback: dialogCallback,
//           );
//         },
//         onResume: (Map<String, dynamic> message) {
//           return _onAllMessages(
//             _adapter.incomingNotificationToMessage(message),
//             PushNotificationsConsts.onResume,
//             dialogCallback: dialogCallback,
//           );
//         },
//         onLaunch: (Map<String, dynamic> message) {
//           return _onAllMessages(
//             _adapter.incomingNotificationToMessage(message),
//             PushNotificationsConsts.onLaunch,
//             dialogCallback: dialogCallback,
//           );
//         },
//       );

//       _firebaseMessaging.requestNotificationPermissions();
//       logger.info('<initialiseFCM> -> Success');
//     } catch (e) {
//       logger.info('<initialiseFCM> -> catch error -> $e');
//     }
//   }
//   // endregion

//   /// [_handleCurrentMessage] method used to show [NotificationDialog]
//   void _handleCurrentMessage(Message message, {void Function(Message) dialogCallback}) {
//     if ((message.title != null && message.title != PushNotificationsConsts.epmtyString) ||
//         (message.content != null && message.content != PushNotificationsConsts.epmtyString)) {
//       dialogCallback(message);
//     }
//   }

//   /// [clearUnreadNotificationsList] used to clear [_unreadNotificationsList]
//   void clearUnreadNotificationsList() => _unreadNotificationsList.clear();
// }
