import 'package:base_project/utils/capitalize.dart';

String listToString(List<String> list) {
  String result = '';

  for (String str in list) {
    result += str.capitalize() + '\n';
  }

  return result;
}
