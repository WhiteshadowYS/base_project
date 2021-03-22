import 'dart:convert';

import 'package:dio/dio.dart';

class CurlInterceptor extends Interceptor {
  @override
  Future<dynamic> onRequest(RequestOptions options) async {
    print('''
    REQUEST:
    ${cURLRepresentation(options)}
    ''');
    return super.onRequest(options);
  }

  String cURLRepresentation(RequestOptions options) {
    final components = <String>['\$ curl -i'];

    if (options.method != null && options.method.toUpperCase() == 'GET') {
      components.add('-X ${options.method}');
    }

    if (options.headers != null) {
      options.headers.forEach((k, dynamic v) {
        if (k != 'Cookie') {
          components.add('-H \"$k: $v\"');
        }
      });
    }

    bool ignoreEncoding = false;
    if (options.data is FormData &&
        (options.data as FormData).files.isNotEmpty) {
      ignoreEncoding = true;
    }
    if (!ignoreEncoding) {
      final String data = json.encode(options.data);
      if (data != null) {
        components.add("-d \'$data\'");
      }
    }

    components.add('\"${options.uri.toString()}\"');

    final String join = components.join('\\\n\t');
    return join;
  }
}
