import 'package:base_project/config/ui_manger.dart';
import 'package:base_project/source/authorization/domain/services/sign_out_service.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: SignOutService, env: ['test'])
class SignOutServiceMock implements SignOutService {
  @override
  Future<void> signOut(_) async {
    UIManager.logger.i('SignOutServiceMock: Success Logout', this);
  }
}
