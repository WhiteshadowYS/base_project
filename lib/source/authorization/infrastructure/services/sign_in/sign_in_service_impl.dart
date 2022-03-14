import 'package:base_project/source/authorization/domain/contracts/sign_in_contract.dart';
import 'package:base_project/source/authorization/domain/entity/user.dart';
import 'package:base_project/source/authorization/domain/services/sign_in_service.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: SignInService, env: ['dev', 'stage', 'prod'])
class SignInServiceImpl implements SignInService {
  @override
  Future<User> signIn(SignInContract contract) => contract.execute();
}
