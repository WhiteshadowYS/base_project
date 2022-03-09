import 'package:base_project/common/network/error/utils/capitalize.dart';

String listToString(List<dynamic> list) {
  String result = '';

  for (dynamic str in list) {
    result += capitalize(str.toString());
  }

  return result;
}
