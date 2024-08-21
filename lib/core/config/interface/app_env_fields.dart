/// Both DevEnv and ProdEnv must implement all these values
abstract interface class AppEnvFields {
  abstract final String sentryDsn;
  abstract final bool enableAnalytics;
}
