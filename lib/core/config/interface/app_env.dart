import 'package:envied/envied.dart';
import 'package:flutter/foundation.dart';

import 'app_env_fields.dart';

part '../dev_env.dart';
part '../prod_env.dart';
part 'app_env.g.dart';

abstract interface class AppEnv implements AppEnvFields {
  // Private constructor to prevent direct instantiation
  AppEnv._();

  // Static instance variable
  static AppEnv? _instance;

  // Factory constructor
  factory AppEnv() {
    // Initialize the instance if it doesn't exist
    _instance ??= kDebugMode ? DevEnv() : ProdEnv();
    return _instance!;
  }
}
