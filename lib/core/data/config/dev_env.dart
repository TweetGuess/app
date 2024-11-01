part of 'interface/app_env.dart';


@Envied(name: 'DevEnv', path: 'env/.env.dev')
final class DevEnv implements AppEnv, AppEnvFields {
  @override
  @EnviedField(varName: 'SENTRY_DSN', obfuscate: true)
  final String sentryDsn = _DevEnv.sentryDsn;

  @override
  @EnviedField(varName: 'ENABLE_ANALYTICS', obfuscate: true, defaultValue: false)
  final bool enableAnalytics = _DevEnv.enableAnalytics;

}

