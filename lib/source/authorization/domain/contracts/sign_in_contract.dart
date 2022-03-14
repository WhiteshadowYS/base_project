import 'package:base_project/source/authorization/domain/entity/user.dart';
import 'package:base_project/utils/base_elements/base_contract.dart';

abstract class SignInContract implements BaseContract<User> {
  @override
  Future<User> execute();
}
