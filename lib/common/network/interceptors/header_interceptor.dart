// import 'package:dio/dio.dart';
// import 'package:logging/logging.dart';
// import 'package:base_project/config/app_router.gr.dart';
// class HeaderInterceptor extends Interceptor {
//   final AppRouter router;
//   final UserSettingsStorage storage;
//   final bool isAuthorized;

//   HeaderInterceptor({
//     required this.router,
//     required this.storage,
//     required this.isAuthorized,
//   });

//   Logger get _logger => Logger('$runtimeType');

//   @override
//   Future onRequest(RequestOptions options, handler) async {
//     _logger.info('<onRequest> => isAuthorized: $isAuthorized');

//     if (isAuthorized) {
//       final UserSettings? token = await storage.take();

//       if (token == null) {
//         return super.onRequest(options, handler);
//       }

//       _logger.info('UserSettings was found $token');

//       options.headers.addAll({'Authorization': 'UserSettings ${token.token}'});
//     }

//     return super.onRequest(options, handler);
//   }

//   @override
//   Future onError(DioError error, handler) async {
//     if (error.response.toString().contains('Invalid token')) {
//       await storage.delete();
//       await router.pushAndRemoveUntil(StartScreenRoute(), predicate: (_) => false);
//     }

//     return super.onError(error, handler);
//   }

//   @override
//   Future onResponse(Response response, handler) async {
//     try {
//       final UserSettings token = UserSettings.fromJson(response.data);

//       if (token.token != null && token.token != '') {
//         await storage.save(token);
//         _logger.info('UserSettings was saved: $token');
//       }
//     } catch (e) {
//       _logger.info('No token in response');
//     }

//     return super.onResponse(response, handler);
//   }
// }
