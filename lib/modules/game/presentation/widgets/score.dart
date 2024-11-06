import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tweetguess/modules/game/presentation/bloc/game_bloc.dart';
import 'package:tweetguess/modules/game/presentation/bloc/game_state.dart';

class GameScore extends StatefulWidget {
  final BuildContext context;
  final GameRoundInProgress roundInProgress;

  const GameScore({
    required this.context,
    required this.roundInProgress,
    super.key,
  });

  @override
  State<GameScore> createState() => _GameScoreState();
}

class _GameScoreState extends State<GameScore> {
  late int _previousScore;
  late int _currentScore;
  bool _isAnimating = false;

  @override
  void initState() {
    super.initState();
    _previousScore = widget.roundInProgress.game.points;
    _currentScore = widget.roundInProgress.game.points;
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<GameBloc, GameState>(
      listenWhen: (previous, current) {
        return previous.mapOrNull(
              roundInProgress: (prev) => prev.game.points,
            ) !=
            current.mapOrNull(
              roundInProgress: (curr) => curr.game.points,
            );
      },
      listener: (context, state) {
        state.mapOrNull(
          roundInProgress: (gameState) {
            setState(() {
              _previousScore = _currentScore;
              _currentScore = gameState.game.points;
              _isAnimating = true;
            });
          },
        );
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(width: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: TweenAnimationBuilder<int>(
                tween: IntTween(
                  begin: _previousScore,
                  end: _currentScore,
                ),
                duration: const Duration(milliseconds: 500),
                onEnd: () => setState(() => _isAnimating = false),
                builder: (context, value, child) {
                  return AutoSizeText(
                    '$value',
                    minFontSize: 30,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: "Pixeboy",
                      color: Colors.white,
                    ),
                  );
                },
              ),
            ),
            Container(
              width: 40,
              alignment: Alignment.centerRight,
              child: const AutoSizeText(
                'pts',
                minFontSize: 10,
                style: TextStyle(
                  fontFamily: "Pixeboy",
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
