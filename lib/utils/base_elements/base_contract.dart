import 'dart:async';

abstract class BaseContract<T> {
  Future<T> execute();
}
