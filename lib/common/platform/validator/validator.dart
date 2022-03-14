import 'i_validator.dart';

enum Field {
  Email,
  FirstName,
  LastName,
  Instagram,
  Link,
  Location,
  Password,
  Phone,
  Role,
  CompanyName,
}

class Validator implements IValidator {
  final Map<Field, Map<String?, bool Function(String)>> _validations;

  Validator(this._validations);

  String? _getError(Field field, String arg) {
    return _validations[field]!
        .entries
        .firstWhere(
          (entry) => entry.value(arg),
          orElse: () => MapEntry(null, (_) => false),
        )
        .key;
  }

  @override
  String? emailValidation(String arg) => _getError(Field.Email, arg);

  @override
  String? firstNameValidation(String arg) => _getError(Field.FirstName, arg);

  @override
  String? instagramValidation(String arg) => _getError(Field.Instagram, arg);

  @override
  String? lastNameValidation(String arg) => _getError(Field.LastName, arg);

  @override
  String? linkValidation(String arg) => _getError(Field.Link, arg);

  @override
  String? locationValidation(String arg) => _getError(Field.Location, arg);

  @override
  String? passwordValidation(String arg) => _getError(Field.Password, arg);

  @override
  String? phoneValidation(String arg) => _getError(Field.Phone, arg);

  @override
  String? companyNameValidation(String arg) => _getError(Field.CompanyName, arg);

  @override
  String? companyRoleValidation(String arg) => _getError(Field.Role, arg);
}
