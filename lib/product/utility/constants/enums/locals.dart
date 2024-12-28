import 'package:flutter/material.dart';

/// Project supported locale enums
enum Locales {
  /// Project supported locales
  tr(Locale('tr', 'TR')),

  /// Project supported locales
  en(Locale('en', 'US'));

  /// Locale values
  final Locale locale;

  /// Locale values
  const Locales(this.locale);
}
