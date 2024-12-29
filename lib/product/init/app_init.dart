import 'dart:async';

import 'package:architecture_template/product/init/config/app_env.dart';
import 'package:architecture_template/product/init/config/env_dev.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kartal/kartal.dart';
import 'package:logger/logger.dart';

@immutable

/// this class is used to initialize the application
final class ApplicationInitialize {
  /// call this method to initialize the application

  /// this method is used to initialize the application
  Future<void> make() async {
    WidgetsFlutterBinding.ensureInitialized();

    await runZonedGuarded(_initialize, (error, stack) {
      Logger().e(error);
    });
  }

  /// this method is used to initialize the application

  static Future<void> _initialize() async {
    await EasyLocalization.ensureInitialized();
    EasyLocalization.logger.enableLevels = [LevelMessages.error];
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    await DeviceUtility.instance.initPackageInfo();

    FlutterError.onError = (details) {
      /// crashlitytics log insert here
      /// logcat log insert here
      Logger().e(details.exceptionAsString());
    };
    AppEnv.setup(config: DevEnv());
  }
}
