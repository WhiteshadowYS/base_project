abstract class IProjectInfoLoader {
  late final String projectName;
  late final String projectCode;
  late final String projectAppId;
  late final String projectVersion;

  IProjectInfoLoader();

  void init();
}
