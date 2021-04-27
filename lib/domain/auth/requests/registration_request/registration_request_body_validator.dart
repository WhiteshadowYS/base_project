import 'package:base_project/common/logic/validator/i_validator.dart';
import 'package:base_project/domain/auth/requests/registration_request/registration_request_body.dart';

class RegistrationRequestBodyValidator {
  final RegistrationRequestBody _model;
  final IValidator _validator;

  RegistrationRequestBodyValidator(
    this._model,
    this._validator,
  );

  String? firstNameValidation(String arg) => _validator.firstNameValidation(arg);
  String? lastNameValidation(String arg) => _validator.lastNameValidation(arg);
  String? emailValidation(String arg) => _validator.emailValidation(arg);
  String? phoneValidation(String arg) => _validator.phoneValidation(arg);
  String? passwordValidation(String arg) => _validator.passwordValidation(arg);

  bool get isFirstNameValid {
    final String? validationResult = firstNameValidation(_model.firstName ?? '');

    return validationResult == null || validationResult == '';
  }

  bool get isLastNameValid {
    final String? validationResult = lastNameValidation(_model.lastName ?? '');

    return validationResult == null || validationResult == '';
  }

  bool get isEmailValid {
    final String? validationResult = emailValidation(_model.email ?? '');

    return validationResult == null || validationResult == '';
  }

  bool get isPhoneValid {
    final String? validationResult = phoneValidation(_model.phone ?? '');

    return validationResult == null || validationResult == '';
  }

  bool get isPasswordValid {
    final String? validationResult = passwordValidation(_model.password ?? '');

    return validationResult == null || validationResult == '';
  }

  bool get isValid => isFirstNameValid && isLastNameValid && isEmailValid && isPhoneValid && isPasswordValid;
}
