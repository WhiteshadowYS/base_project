/// [ValidationService] it is service for validation of input text.
/// Methods:
/// - [numberValidation] function for numbers validation, it checks input values and return error if it is not number,
///   if it starts at zero, or if number is negative or null.

class ValidationManager {
  static String? intValidation(String? arg, Object dictionary) {
    final RegExp regExp = RegExp(r'^-?[0-9]+$');

    if (arg == null || arg == '') return null;

    if (arg.startsWith('0')) {
      return '';
    }

    if (!regExp.hasMatch(arg)) {
      return '';
    }

    if (int.tryParse(arg) == null) {
      return '';
    }

    return null;
  }
}
