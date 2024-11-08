import 'package:firebase_analytics/firebase_analytics.dart';

abstract class AnalyticsController {
  AnalyticsController({
    required this.analytics,
  });

  final FirebaseAnalytics analytics;

  void logStartGame();
  void logEndGame();
  void logStartOnboarding();
  void logEndOnboarding();
}
