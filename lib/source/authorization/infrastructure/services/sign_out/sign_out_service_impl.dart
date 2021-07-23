import 'package:base_project/source/authorization/domain/contracts/sign_out_contract.dart';
import 'package:base_project/source/authorization/domain/services/sign_out_service.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: SignOutService, env: ['dev', 'stage', 'prod'])
class SignOutServiceImpl implements SignOutService {
  @override
  Future<void> signOut(SignOutContract contract) => contract.execute();
}
