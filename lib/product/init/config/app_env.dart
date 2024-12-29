import 'package:architecture_template/product/init/config/app_config_interface.dart';
import 'package:architecture_template/product/init/config/env_dev.dart';
import 'package:architecture_template/product/init/config/prod_env.dart';
import 'package:flutter/foundation.dart';

/// App env
final class AppEnv {
  /// setup app env
  AppEnv.setup({required AppConfigInterface config}) {
    _config = config;
  }

  /// setup app env general dev and prod
  AppEnv.general() {
    _config = kDebugMode ? DevEnv() : ProdEnv();
  }
  static late final AppConfigInterface _config;

  /// network base url
  static String get baseUrl => _config.baseUrl;

  /// Google maps api key
  static String get apiKey => _config.apiKey;
}

/// app env items
enum AppEnvItems {
  /// base url
  baseUrl,

  /// api key
  apiKey;

  /// value
  String get value {
    switch (this) {
      case AppEnvItems.baseUrl:
        return AppEnv._config.baseUrl;
      case AppEnvItems.apiKey:
        return AppEnv._config.apiKey;
    }
  }
}
