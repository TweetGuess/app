import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:tweetguess/core/bloc/user/user_bloc.dart';
import 'package:tweetguess/core/routing/custom_transitions.dart';
import 'package:tweetguess/core/ui/observers/navigator.dart';
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

final router = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: '/',
  observers: [
    AppNavObserver(),
    SentryNavigatorObserver(),
    FirebaseAnalyticsObserver(analytics: FirebaseAnalytics.instance),
  ],
  debugLogDiagnostics: true,
  redirect: (BuildContext context, GoRouterState state) {
    final bool hasFinishedIntro = GetIt.I<UserBloc>().state.finishedIntro;

    if (!hasFinishedIntro && state.matchedLocation != '/intro') {
      return '/intro';
    }

    if (hasFinishedIntro && state.matchedLocation == '/intro') {
      return '/';
    }

    return null;
  },
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/intro',
      pageBuilder: (context, state) => CustomTransitions.createTransition(
        child: const IntroScreen(),
        type: TransitionType.slideRight,
        name: 'intro',
        key: state.pageKey,
      ),
    ),
    GoRoute(
      path: '/settings',
      pageBuilder: (context, state) {
        final Map<String, dynamic>? extra =
            state.extra as Map<String, dynamic>?;
        final TransitionType transitionType =
            extra?['transition'] ?? TransitionType.circularReveal;

        return CustomTransitions.createTransition(
          child: const SettingsPage(),
          type: transitionType,
          offset: extra?['offset'] as Offset?,
          name: 'settings',
          key: state.pageKey,
        );
      },
    ),
    GoRoute(
      path: '/profile',
      pageBuilder: (context, state) {
        final Map<String, dynamic>? extra =
            state.extra as Map<String, dynamic>?;
        final TransitionType transitionType =
            extra?['transition'] ?? TransitionType.circularReveal;

        return CustomTransitions.createTransition(
          child: const ProfilePage(),
          type: transitionType,
          offset: extra?['offset'] as Offset?,
          name: 'profile',
          key: state.pageKey,
        );
      },
    ),
    GoRoute(
      path: '/game',
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
          name: 'game',
          key: UniqueKey(),
        );
      },
      routes: [
        GoRoute(
          path: 'overview',
          pageBuilder: (context, state) {
            final Game game = state.extra as Game;
            return CustomTransitions.createTransition(
              child: BlocProvider.value(
                value: context.read<GameBloc>(),
                child: OverviewExitScreen(game: game),
              ),
              type: TransitionType.circularReveal,
              name: 'game-overview',
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
