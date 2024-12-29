import 'package:architecture_template/product/init/config/app_config_interface.dart';
import 'package:envied/envied.dart';

part 'prod_env.g.dart';

@Envied(
  path: 'assets/env/.prod.env',
  obfuscate: true,
)

/// Development environment
final class ProdEnv implements AppConfigInterface {
  @EnviedField(varName: 'BASE_URL')

  /// Base url
  static final String _baseUrl = _ProdEnv._baseUrl;
  @EnviedField(varName: 'API_KEY')

  /// Api key
  static final String _apikey = _ProdEnv._apikey;

  @override
  String get apiKey => _apikey;
  @override
  String get baseUrl => _baseUrl;
}
