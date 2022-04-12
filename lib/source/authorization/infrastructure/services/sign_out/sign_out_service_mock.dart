import 'package:base_project/source/authorization/domain/services/sign_out_service.dart';
import 'package:base_project/utils/printers.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: SignOutService, env: ['test'])
class SignOutServiceMock implements SignOutService {
  @override
  Future<void> signOut(_) async {
    infoPrint('SignOutServiceMock: Success Logout', this);
  }
}
