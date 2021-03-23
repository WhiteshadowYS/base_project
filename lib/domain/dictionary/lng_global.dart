class LngGlobal {
  String? error;

  LngGlobal({
    this.error,
  });

  factory LngGlobal.fromJson(Map<String, dynamic> json) {
    return LngGlobal(
      error: json['error_title'],
    );
  }
}
