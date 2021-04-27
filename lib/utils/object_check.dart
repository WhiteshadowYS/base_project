Map<String, dynamic> objectCheck(dynamic body) {
  final Map<String, dynamic> data = body.toJson();

  data.removeWhere((key, value) {
    return value == null || value == '' || value == ' ';
  });

  return data;
}
