abstract class BaseStorage<T> {
  String get key;
  Future<T?> take();
  Future<void> save(T data) async => key;
}
