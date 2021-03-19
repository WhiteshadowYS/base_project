// import 'dart:async';

// import 'package:firebase_database/firebase_database.dart';
// import 'package:flutter/services.dart';
// import 'package:logging/logging.dart';

// /// [FirebaseManager] it is manager for work with firebase.
// /// This class it - Singleton, for using call to [FirebaseManager.instance]
// /// - [getRealTimeDatabaseData] function for get all data saved in RealTime database.
// /// - [listenChanges] function for listening changes from realtime database.
// /// - [databaseReference] Gets a DatabaseReference for the root of your Firebase Database.
// /// - [_subscription] is used to subscribe or unsubscribe from the events of firebase rtdb
// class FirebaseManager {
//   static const tag = '[FirebaseManager]';

//   FirebaseManager._privateConstructor();

//   static final FirebaseManager _instance = FirebaseManager._privateConstructor();

//   static FirebaseManager get instance => _instance;

//   Logger get logger => Logger('${_instance.runtimeType}');

//   final DatabaseReference databaseReference = FirebaseDatabase.instance.reference();
//   StreamSubscription<Event> _subscription;

//   Future<dynamic> getRealTimeDatabaseData() async {
//     final DataSnapshot data = await databaseReference.once();

//     logger.info('<getRealTimeDatabaseData> \nLoaded data: ${data.value},\ntype: ${data.value.runtimeType}');

//     return data.value;
//   }

//   void listenChanges(String id, {Function callback}) async {
//     await _unsubscribeFromUpdates();
//     await _subscribeToUpdates(id, callback: callback);
//   }

//   Future<void> _subscribeToUpdates(String id, {Function callback}) async {
//     try {
//       _subscription = databaseReference.onChildChanged.where((Event event) => event.snapshot.key == id.toString()).listen(
//         (Event event) {
//           logger.info('<_subscribeToUpdates> => id: $id, new version: ${event.snapshot.value}');
//           callback(id, event.snapshot.value);
//         },
//       );
//     } on PlatformException {
//       logger.warning('<_subscribeToUpdates> => Error on trying to subscribe to updates!');
//     }
//   }

//   Future<void> _unsubscribeFromUpdates() async {
//     try {
//       await _subscription?.cancel();
//     } on PlatformException {
//       logger.warning('<unsubscribeFromUpdates> => Error on Subscribion cancel.');
//     }
//   }
// }
