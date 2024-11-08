part of '../../domain/config/app_env.dart';

@Envied(name: 'ProdEnv', path: 'env/.env.prod')
final class ProdEnv implements AppEnv, AppEnvFields {
  @override
  @EnviedField(varName: 'SENTRY_DSN', obfuscate: true)
  final String sentryDsn = _ProdEnv.sentryDsn;

  @override
  @EnviedField(varName: 'ENABLE_ANALYTICS', defaultValue: false)
  final bool enableAnalytics = _ProdEnv.enableAnalytics;
}
