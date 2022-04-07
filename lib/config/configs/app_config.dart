abstract class AppConfig {
  String get name;
  String get baseUrl;
  String get sentryUrl;
  bool get useMock;
  int get pagination;

  Future<void> init() async {
    // Logger.root.level = Level.ALL; // defaults to Level.INFO
    // Logger.root.onRecord.listen((record) {
    //   print('${record.level.name}: ${record.time}: ${record.message}');
    // });
    await initSystem();
  }

  Future<void> initSystem() async {}

  @override
  String toString() => '$runtimeType {url:$baseUrl}';
}
