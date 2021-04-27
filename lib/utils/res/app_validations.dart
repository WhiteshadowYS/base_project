class AppValidations {
  final RegExp passwordRegExp = RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$');
  final RegExp phoneRegExp = RegExp(r'^(([+]{0,1}\d{2})|\d?)[\s-]?[0-9]{2}[\s-]?[0-9]{3}[\s-]?[0-9]{4,5}$');
  final RegExp nameRegExp = RegExp(r'^[a-zA-Z\-\pL]+(?:(?! {2})[a-zA-Z\-\pL ])*[a-zA-Z\-\pL]+$');
  final RegExp emailRegExp = RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
  final RegExp companyNameRegExp = RegExp(r'^[A-Z]([a-zA-Z0-9]|[- @\.#&!])*$');
  final RegExp companyRoleRegExp = RegExp(r'^[A-Z]([a-zA-Z0-9]|[- @\.#&!])*$');
  final RegExp linkValidation = RegExp(
      r'(https?:\/\/(?:www\.|(?!www))[a-zA-Z0-9][a-zA-Z0-9-]+[a-zA-Z0-9]\.[^\s]{2,}|www\.[a-zA-Z0-9][a-zA-Z0-9-]+[a-zA-Z0-9]\.[^\s]{2,}|https?:\/\/(?:www\.|(?!www))[a-zA-Z0-9]+\.[^\s]{2,}|www\.[a-zA-Z0-9]+\.[^\s]{2,})');
  final RegExp locationRegExp = RegExp(r'^([a-zA-z0-9\\' '(),\s]{2,255})');
}
