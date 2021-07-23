import 'package:base_project/utils/base_elements/base_contract.dart';

abstract class SignOutContract implements BaseContract<void> {
  @override
  Future<void> execute();
}
