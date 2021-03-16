import 'package:flutter/material.dart';

abstract class AppEvent {}

class InitializeApp extends AppEvent {}

class ChangeLocale extends AppEvent {
  final Locale locale;

  ChangeLocale(this.locale);
}
