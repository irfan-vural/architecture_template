import 'package:architecture_template/feature/home/view/home_view.dart';
import 'package:architecture_template/product/init/app_init.dart';
import 'package:architecture_template/product/init/product_localization.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  await ApplicationInitialize().make();
  runApp(ProductLocalization(child: const MyApp()));
}

/// Main app
class MyApp extends StatelessWidget {
  /// Main app constructor
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: const HomeView(),
    );
  }
}
