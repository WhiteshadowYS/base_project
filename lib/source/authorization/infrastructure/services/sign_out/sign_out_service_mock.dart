import 'package:base_project/source/authorization/domain/contracts/sign_out_contract.dart';
import 'package:base_project/source/authorization/domain/services/sign_out_service.dart';
import 'package:base_project/utils/data_print.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: SignOutService, env: ['test'])
class SignOutServiceMock implements SignOutService {
  @override
  Future<void> signOut(_) async {
    dataPrint('SignOutServiceMock: Success Logout', this);
  }
}
