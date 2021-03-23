import 'package:base_project_template/domain/dictionary/lng_global.dart';

class Lng {
  final String? locale;
  final LngGlobal? global;

  Lng({
    this.locale,
    this.global,
  });

  factory Lng.fromJson(Map<String, dynamic> json) {
    return Lng(
      locale: json['code'],
      global: json['global'],
    );
  }
}
