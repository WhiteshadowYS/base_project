import 'package:base_project/source/authorization/domain/entities/user.dart';
import 'package:base_project/utils/base_elements/base_contract.dart';

abstract class SignUpContract implements BaseContract<User> {
  @override
  Future<User> execute();
}
