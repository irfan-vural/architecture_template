import 'package:architecture_template/product/utility/constants/enums/locals.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

/// Project supported locales
class ProductLocalization extends EasyLocalization {
  /// Project supported locales
  ProductLocalization({
    required super.child,
    super.key,
  }) : super(
          supportedLocales: _supportedLocales,
          path: _translationsPath,
          useOnlyLangCode: true,
        );

  /// Project supported locales
  static final List<Locale> _supportedLocales = [
    Locales.tr.locale,
    Locales.en.locale,
  ];

  static const String _translationsPath = 'assets/translations';

  ///Change language by using context Locales
  static Future<void> updateLanguage({
    required BuildContext context,
    required Locales value,
  }) async {
    await context.setLocale(value.locale);
  }
}
