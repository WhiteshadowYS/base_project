import 'package:base_project/common/presentors/dictionary/i_dictionary.dart';
import 'package:base_project/domain/shared/dictionary/language.dart';

import 'i_validator.dart';

class DefaultValidator implements IValidator {
  IDictionary<Language> dictionary;

  DefaultValidator(this.dictionary);

  final RegExp _passwordRegExp = RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$');
  final RegExp _phoneRegExp = RegExp(r'^(([+]{0,1}\d{2})|\d?)[\s-]?[0-9]{2}[\s-]?[0-9]{3}[\s-]?[0-9]{4,5}$');
  final RegExp _nameRegExp = RegExp(r'^[a-zA-Z\-\pL]+(?:(?! {2})[a-zA-Z\-\pL ])*[a-zA-Z\-\pL]+$');
  final RegExp _emailRegExp = RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');

  @override
  String? emailValidation(String arg) {
    if (!_emailRegExp.hasMatch(arg)) {
      return dictionary.data.errors.invalidValue;
    }
  }

  @override
  String? firstNameValidation(String arg) {
    if (!_nameRegExp.hasMatch(arg)) {
      return dictionary.data.errors.invalidValue;
    }
  }

  @override
  String? lastNameValidation(String arg) {
    if (!_nameRegExp.hasMatch(arg)) {
      return dictionary.data.errors.invalidValue;
    }
  }

  @override
  String? passwordValidation(String arg) {
    if (!_passwordRegExp.hasMatch(arg)) {
      return dictionary.data.errors.invalidPassword;
    }
  }

  @override
  String? phoneValidation(String arg) {
    if (!_phoneRegExp.hasMatch(arg)) {
      return dictionary.data.errors.invalidValue;
    }
  }

  @override
  String? instagramValidation(String arg) {}

  @override
  String? linkValidation(String arg) {}

  @override
  String? locationValidation(String arg) {}

  @override
  String? companyNameValidation(String arg) {
    // TODO: implement companyNameValidation
    throw UnimplementedError();
  }

  @override
  String? companyRoleValidation(String arg) {
    // TODO: implement companyRoleValidation
    throw UnimplementedError();
  }
}
