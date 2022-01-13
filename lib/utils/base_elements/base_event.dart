import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseEvent<S, B extends Bloc<dynamic, S>> {
  Future<void> execute(B bloc, dynamic emit) async {}
}
