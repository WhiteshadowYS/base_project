import 'package:base_project/common/logic/validator/i_validator.dart';
import 'package:base_project/domain/auth/requests/login_request/login_request_body.dart';

class LoginRequestBodyValidator {
  final LoginRequestBody _model;
  final IValidator _validator;

  LoginRequestBodyValidator(
    this._model,
    this._validator,
  );

  String? emailValidation(String arg) => _validator.emailValidation(arg);
  String? passwordValidation(String arg) => '';

  bool get isEmailValid {
    final String? validationResult = emailValidation(_model.email ?? '');

    return validationResult == null || validationResult == '';
  }

  bool get isPasswordValid {
    final String? validationResult = passwordValidation(_model.password ?? '');

    return validationResult == null || validationResult == '';
  }

  bool get isValid => isEmailValid && isPasswordValid;
}
