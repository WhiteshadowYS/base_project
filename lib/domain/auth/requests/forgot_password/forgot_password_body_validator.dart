import 'package:base_project/common/logic/validator/i_validator.dart';
import 'package:base_project/domain/auth/requests/forgot_password/forgot_password_body.dart';

class ForgotPasswordBodyValidator {
  final ForgotPasswordBody _model;
  final IValidator _validator;

  ForgotPasswordBodyValidator(
    this._model,
    this._validator,
  );

  String? emailValidation(String arg) => _validator.emailValidation(arg);

  bool get isEmailValid {
    final String? validationResult = emailValidation(_model.email ?? '');

    return validationResult == null || validationResult == '';
  }

  bool get isValid => isEmailValid;
}
