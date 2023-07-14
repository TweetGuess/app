import 'package:auto_size_text/auto_size_text.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tweetguess/core/bloc/game/game_event.dart';
import 'package:tweetguess/core/bloc/game/utils/const.dart';
import 'package:tweetguess/core/utils/app_bar.dart';
import 'package:tweetguess/ui/components/primary_button.dart';
import 'package:tweetguess/widgets/game/countdown.dart';
import 'package:tweetguess/widgets/game/timer.dart';

import '../../core/bloc/game/game_bloc.dart';
import '../../core/bloc/game/game_state.dart';
import '../../ui/utils/routes/circular_transition_route.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  State<GameScreen> createState() => _GameScreenState();

  // TODO: Maybe add a round parameter to set condition for when the BlocBuilder should listen?
  // Have another Route so we can keep the RouteSettings
  static Route route({
    bool countdownEnabled = true,
    GameBloc? bloc,
    Duration transitionDuration = const Duration(milliseconds: 600),
  }) {
    return CircularTransitionRoute(
      page: BlocProvider<GameBloc>.value(
        value: bloc ?? GameBloc(),
        child: (countdownEnabled
            ? const Countdown()
            : GameScreen(key: UniqueKey())),
      ),
      settings: const RouteSettings(name: "/game"),
    );
  }

  static Widget page({
    GameBloc? bloc,
    bool countdownEnabled = true,
  }) {
    return BlocProvider<GameBloc>.value(
      value: bloc ?? GameBloc(),
      child:
          (countdownEnabled ? const Countdown() : GameScreen(key: UniqueKey())),
    );
  }
}

class _GameScreenState extends State<GameScreen> {
  /// Used to access the TimerController to pause, resume & stop the timer
  final gameTimerKey = GlobalKey<CircularCountDownTimerState>();

  /// Used to update game score after we get feedback on the answer
  final _gameScoreNotifier = ValueNotifier<int?>(null);

  /// Used to disable taps during score count animation
  var _ignoringTaps = false;

  Future<dynamic> _onWillPopCallback(BuildContext context) async {
    return await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Are you sure?'),
        content: const Text('Do you want to exit the Game'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('No'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed("/");
            },
            child: const Text('Yes'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return !_ignoringTaps && (await _onWillPopCallback(context)) ?? false;
      },
      child: IgnorePointer(
        ignoring: _ignoringTaps,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: const Text(
              "TweetGuess",
            ),
            centerTitle: true,
            actions: const [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [],
                ),
              ),
            ],
          ).toHero("game"),
          body: BlocConsumer<GameBloc, GameState>(
            listener: (context, state) {
              state.whenOrNull(
                roundInProgress: (game, inProgressState) async {
                  if (inProgressState != null) {
                    switch (inProgressState) {
                      case RoundWrongAnswer(selectedAnswer: int answerInd):
                        {
                          var buttonState = game
                              .currentRound.answerPossibilities[answerInd].$1;
                          buttonState.currentState?.lightUpRed();

                          break;
                        }

                      case RoundFinished():
                        {
                          // Ignore all taps, kick off game score animation & pause timer
                          setState(() {
                            _ignoringTaps = true;
                          });

                          switch (inProgressState) {
                            case RoundRightAnswer(
                                selectedAnswer: int answerInd
                              ):
                              {
                                var buttonState = game.currentRound
                                    .answerPossibilities[answerInd].$1;
                                buttonState.currentState?.lightUpGreen();

                                gameTimerKey.currentState?.countDownController
                                    ?.pause();

                                _gameScoreNotifier.value = game.points +
                                    GameConstants.TIME_PER_ROUND -
                                    int.parse(
                                      gameTimerKey.currentState?.time ?? '15',
                                    );

                                break;
                              }

                            case RoundNoTimeLeft():
                              {
                                // Let all buttons light up red
                                for (var possibility
                                    in game.currentRound.answerPossibilities) {
                                  possibility.$1.currentState?.lightUpRed();
                                }
                                break;
                              }

                            default:
                              {
                                break;
                              }
                          }

                          Future.delayed(const Duration(milliseconds: 1000),
                              () {
                            // then kick off next round
                            context.read<GameBloc>().add(
                                  GameEvent.nextRound(
                                    context: context,
                                    timeLeft: GameConstants.TIME_PER_ROUND -
                                        int.parse(
                                          gameTimerKey.currentState?.time ??
                                              '15',
                                        ),
                                  ),
                                );
                          });
                        }

                      default:
                        break;
                    }
                  }
                },
                terminal: (game, event) {
                  // TODO: Logic for popping page with nice Summary page (regarding all points and shi)
                },
              );
            },
            builder: (context, parentState) {
              return parentState.map(
                initial: (gameInitial) {
                  return const CircularProgressIndicator();
                },
                roundInProgress: (gameInProgress) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10)
                        .copyWith(bottom: 20),
                    child: Column(
                      children: [
                        _gameBar(gameInProgress),
                        const Gap(20),
                        Flexible(child: _tweetContent(context, gameInProgress)),
                        const Gap(20),
                        Flexible(
                          child: _answerButtons(context, gameInProgress),
                        ),
                      ],
                    ),
                  );
                },
                terminal: (value) => const Text("LOL"),
              );
            },
          ),
        ),
      ),
    );
  }

  Column _answerButtons(
    BuildContext context,
    GameRoundInProgress gameInProgress,
  ) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: _generateLayout(context, gameInProgress),
    );
  }

  List<Widget> _generateLayout(
    BuildContext context,
    GameRoundInProgress gameInProgress,
  ) {
    var layout = <Widget>[];

    for (var i = 0;
        i <
            (gameInProgress.game.currentRound.answerPossibilities.length / 2)
                .floor();
        i++) {
      for (var element in [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: _buildAnswerButton(context, gameInProgress, i * 2),
              ),
              const Gap(10),
              Expanded(
                child: _buildAnswerButton(
                  context,
                  gameInProgress,
                  i * 2 + 1,
                ),
              )
            ],
          ),
        ),
        const Gap(10)
      ]) {
        layout.add(element);
      }
    }

    return layout..removeLast();
  }

  GestureDetector _buildAnswerButton(
    BuildContext context,
    GameRoundInProgress gameInProgress,
    int i,
  ) {
    return GestureDetector(
      onTap: () {
        context.read<GameBloc>().add(GameEvent.submitRound(answer: i));
      },
      child: UIPrimaryButton(
        key: gameInProgress.game.currentRound.answerPossibilities[i].$1,
        text: gameInProgress.game.currentRound.answerPossibilities[i].$2.$1,
      ),
    );
  }

  Container _tweetContent(
    BuildContext context,
    GameRoundInProgress gameInProgress,
  ) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(20),
      child: Center(
        child: Text(gameInProgress.game.currentRound.content),
      ),
    );
  }

  SizedBox _gameBar(GameRoundInProgress value) {
    return SizedBox(
      height: 10.h,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.centerLeft,
                child: GameTimer(
                  countdownTimerKey: gameTimerKey,
                  onFinished: () {
                    context.read<GameBloc>().add(GameEvent.noTimeLeft());
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 1.h),
              child: GameScore(
                context: context,
                value: value,
                scoreNotifier: _gameScoreNotifier,
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  height: 60,
                  width: 60,
                  child: Stack(
                    alignment: Alignment.center,
                    fit: StackFit.expand,
                    children: [
                      const Positioned.fill(
                        top: 1,
                        child: FittedBox(
                          fit: BoxFit.fitHeight,
                          alignment: Alignment.bottomCenter,
                          child: Icon(Icons.favorite, color: Colors.red),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: FittedBox(
                          child: AutoSizeText(
                            "${value.game.lives}",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "Pixeboy",
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GameScore extends StatelessWidget {
  const GameScore({
    Key? key,
    required this.context,
    required this.value,
    required this.scoreNotifier,
  }) : super(key: key);

  final BuildContext context;
  final GameRoundInProgress value;
  final ValueNotifier<int?> scoreNotifier;

  @override
  Widget build(BuildContext context) {
    final score = scoreNotifier.value ?? value.game.points;

    return Container(
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
              tween: IntTween(begin: value.game.points, end: score),
              // Hardcoded Values, check Delay before we transition new scren
              duration: const Duration(milliseconds: 500),
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
    );
  }
}
