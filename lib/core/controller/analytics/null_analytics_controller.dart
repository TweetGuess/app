import 'package:tweetguess/core/controller/analytics/analytics_controller.dart';

/// Null Analytics Controller for the sake of dependency injection to prevent collecting analytics
/// 
class NullAnalyticsController extends AnalyticsController {
  NullAnalyticsController({
    required super.analytics,
  });

  @override
  void logEndGame() async {}

  @override
  void logEndOnboarding() async {}

  @override
  void logStartGame() async {}

  @override
  void logStartOnboarding() async {}
}
