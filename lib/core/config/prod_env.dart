part of 'interface/app_env.dart';

@Envied(name: 'ProdEnv', path: 'env/.env.prod')
final class ProdEnv implements AppEnv, AppEnvFields {
  @override
  @EnviedField(varName: 'sentryDsn', obfuscate: true)
  final String sentryDsn = _ProdEnv.sentryDsn;

  @override
  @EnviedField(varName: 'enableAnalytics', defaultValue: false)
  final bool enableAnalytics = _ProdEnv.enableAnalytics;
}
