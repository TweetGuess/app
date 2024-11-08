import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:tweetguess/core/data/bloc/user/user_bloc.dart';
import 'package:tweetguess/ui/transitions/custom_transitions.dart';
import 'package:tweetguess/core/presentation/observers/navigator.dart';
import 'package:tweetguess/modules/game/domain/models/game.dart';
import 'package:tweetguess/modules/game/presentation/bloc/game_bloc.dart';
import 'package:tweetguess/modules/game/presentation/game.dart';
import 'package:tweetguess/modules/game/presentation/views/overview.dart';
import 'package:tweetguess/modules/game/presentation/widgets/countdown.dart';
import 'package:tweetguess/modules/home/presentation/home.dart';
import 'package:tweetguess/modules/onboarding/presentation/intro.dart';
import 'package:tweetguess/modules/profile/presentation/profile.dart';
import 'package:tweetguess/modules/settings/presentation/settings.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

/// Enum representing all available routes in the application.
/// Use this to reference routes in a type-safe way throughout the app.
enum BaseRoutes {
  home('/'),
  intro('/intro'),
  settings('/settings'),
  profile('/profile'),
  game('/game');

  const BaseRoutes(this.path);
  final String path;

  /// Get the route path
  String get routePath => path;

  /// Get route name from path
  static String nameFromPath(String path) {
    return path.replaceAll('/', '').replaceAll('-', ' ');
  }

  /// Get route name
  String get routeName => nameFromPath(path);
}

final router = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: BaseRoutes.home.routePath,
  observers: [
    AppNavObserver(),
    SentryNavigatorObserver(),
    FirebaseAnalyticsObserver(analytics: FirebaseAnalytics.instance),
  ],
  debugLogDiagnostics: true,
  redirect: (BuildContext context, GoRouterState state) {
    final bool hasFinishedIntro = GetIt.I<UserBloc>().state.finishedIntro;

    if (!hasFinishedIntro &&
        state.matchedLocation != BaseRoutes.intro.routePath) {
      return BaseRoutes.intro.routePath;
    }

    if (hasFinishedIntro &&
        state.matchedLocation == BaseRoutes.intro.routePath) {
      return BaseRoutes.home.routePath;
    }

    return null;
  },
  routes: [
    GoRoute(
      path: BaseRoutes.home.routePath,
      name: BaseRoutes.home.routePath,
      builder: (context, state) => HomeScreen(
        key: state.pageKey,
      ),
    ),
    GoRoute(
      path: BaseRoutes.intro.routePath,
      pageBuilder: (context, state) => CustomTransitions.createTransition(
        child: const IntroScreen(),
        type: TransitionType.slideRight,
        name: state.fullPath,
        key: state.pageKey,
      ),
    ),
    GoRoute(
      path: BaseRoutes.settings.routePath,
      pageBuilder: (context, state) {
        final Map<String, dynamic>? extra =
            state.extra as Map<String, dynamic>?;
        final TransitionType transitionType =
            extra?['transition'] ?? TransitionType.circularReveal;

        return CustomTransitions.createTransition(
          child: const SettingsPage(),
          type: transitionType,
          offset: extra?['offset'] as Offset?,
          name: state.fullPath,
          key: state.pageKey,
        );
      },
    ),
    GoRoute(
      path: BaseRoutes.profile.routePath,
      pageBuilder: (context, state) {
        final Map<String, dynamic>? extra =
            state.extra as Map<String, dynamic>?;
        final TransitionType transitionType =
            extra?['transition'] ?? TransitionType.circularReveal;

        return CustomTransitions.createTransition(
          child: const ProfilePage(),
          type: transitionType,
          offset: extra?['offset'] as Offset?,
          name: state.fullPath,
          key: state.pageKey,
        );
      },
    ),
    GoRoute(
      path: BaseRoutes.game.routePath,
      pageBuilder: (context, state) {
        final Map<String, dynamic>? extra =
            state.extra as Map<String, dynamic>?;
        final bool countdownEnabled = extra?['countdownEnabled'] ?? true;
        final GameBloc bloc = extra?['bloc'] ?? GameBloc();
        final TransitionType transitionType =
            extra?['transition'] ?? TransitionType.circularReveal;

        return CustomTransitions.createTransition(
          child: BlocProvider<GameBloc>.value(
            value: bloc,
            child: countdownEnabled ? const Countdown() : const GameScreen(),
          ),
          type: transitionType,
          name: state.fullPath,
          key: state.pageKey,
        );
      },
      routes: [
        GoRoute(
          path: "overview",
          pageBuilder: (context, state) {
            final Map<String, dynamic>? extra =
                state.extra as Map<String, dynamic>?;
            final Game game = extra?['game'] as Game;

            return CustomTransitions.createTransition(
              child: OverviewExitScreen(game: game),
              type: TransitionType.circularReveal,
              name: state.fullPath,
              key: state.pageKey,
            );
          },
        ),
      ],
    ),
  ],
  errorBuilder: (context, state) => Scaffold(
    body: Center(
      child: Text('Error: ${state.error}'),
    ),
  ),
);
