import 'package:base_project/source/authorization/domain/entities/user.dart';
import 'package:base_project/source/authorization/domain/contracts/sign_up_contract.dart';
import 'package:base_project/source/authorization/domain/services/sign_up_service.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: SignUpService)
class SignUpServiceImpl implements SignUpService {
  @override
  Future<User> signUp(SignUpContract contract) => contract.execute();
}
