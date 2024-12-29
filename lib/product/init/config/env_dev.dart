import 'package:architecture_template/product/init/config/app_config_interface.dart';
import 'package:envied/envied.dart';

part 'env_dev.g.dart';

@Envied(
  obfuscate: true,
  path: 'assets/env/.dev.env',
)

/// Development environment
final class DevEnv implements AppConfigInterface {
  @EnviedField(varName: 'BASE_URL')

  /// Base url
  static final String _baseUrl = _DevEnv._baseUrl;

  @EnviedField(varName: 'API_KEY')

  /// Base url
  static final String _apikey = _DevEnv._apikey;

  @override
  String get apiKey => _apikey;

  @override
  String get baseUrl => _baseUrl;
}
