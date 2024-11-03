import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:tweetguess/core/bloc/user/user_bloc.dart';
import 'package:tweetguess/core/routing/custom_transitions.dart';
import 'package:tweetguess/modules/game/domain/models/game.dart';
import 'package:tweetguess/modules/game/presentation/bloc/game_bloc.dart';
import 'package:tweetguess/modules/game/presentation/views/overview.dart';
import 'package:tweetguess/modules/game/presentation/widgets/countdown.dart';
import 'package:tweetguess/modules/home/presentation/home.dart';
import 'package:tweetguess/modules/onboarding/presentation/intro.dart';
import 'package:tweetguess/modules/profile/presentation/profile.dart';
import 'package:tweetguess/modules/settings/presentation/settings.dart';
import 'package:tweetguess/modules/game/presentation/game.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: '/',
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
      pageBuilder: (context, state) => CustomTransitions.slideRightTransition(
        child: const HomeScreen(),
        name: 'home',
      ),
    ),
    GoRoute(
      path: '/intro',
      pageBuilder: (context, state) => CustomTransitions.slideRightTransition(
        child: const IntroScreen(),
        name: 'intro',
      ),
    ),
    GoRoute(
      path: '/settings',
      pageBuilder: (context, state) => CustomTransitions.slideRightTransition(
        child: const SettingsPage(),
        name: 'settings',
      ),
    ),
    GoRoute(
      path: '/profile',
      pageBuilder: (context, state) => CustomTransitions.slideRightTransition(
        child: const ProfilePage(),
        name: 'profile',
      ),
    ),
    GoRoute(
      path: '/game',
      pageBuilder: (context, state) {
        final Map<String, dynamic>? extra = state.extra as Map<String, dynamic>?;
        final bool countdownEnabled = extra?['countdownEnabled'] ?? true;
        final GameBloc bloc = extra?['bloc'] ?? GameBloc();
        
        return CustomTransitions.gameEntryTransition(
          child: BlocProvider<GameBloc>.value(
            value: bloc,
            child: countdownEnabled ? const Countdown() : const GameScreen(),
          ),
          name: 'game',
        );
      },
      routes: [
        GoRoute(
          path: 'overview',
          pageBuilder: (context, state) {
            final Game game = state.extra as Game;
            return CustomTransitions.circularRevealTransition(
              child: BlocProvider.value(
                value: context.read<GameBloc>(),
                child: OverviewExitScreen(game: game),
              ),
              name: 'game-overview',
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