import 'package:tweetguess/core/firebase/analytics/analytics_controller.dart';

class DefaultAnalyticsController extends AnalyticsController {
  DefaultAnalyticsController({
    required super.analytics,
  });

  @override
  void logEndGame() async {
    await analytics.logEvent(
      name: "end_game",
    );
  }

  @override
  void logEndOnboarding() async {
    await analytics.logTutorialComplete();
  }

  @override
  void logStartGame() async {
    await analytics.logEvent(
      name: "start_game",
    );
  }

  @override
  void logStartOnboarding() async {
    await analytics.logTutorialBegin();
  }
}
