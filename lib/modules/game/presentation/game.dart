import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tweetguess/core/bloc/user/user_bloc.dart';
import 'package:tweetguess/core/utils/tweet_service.dart';
import 'package:tweetguess/models/interface_tweet.dart';
import 'package:tweetguess/modules/game/presentation/bloc/game_event.dart';
import 'package:tweetguess/modules/game/presentation/widgets/countdown.dart';
import 'package:tweetguess/modules/game/presentation/widgets/timer.dart';
import 'package:tweetguess/ui/components/primary_game_button.dart';
import 'package:tweetguess/ui/extensions/app_bar.dart';

import '../../../ui/components/primary_container.dart';
import '../../../ui/utils/routes/circular_transition_route.dart';
import 'bloc/game_bloc.dart';
import 'bloc/game_state.dart';
import 'widgets/helper/wrapper.dart';

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

  @override
  void initState() {
    super.initState();

    context.read<GameBloc>().initRound(
          context,
          gameScoreNotifier: _gameScoreNotifier,
          gameTimerKey: gameTimerKey,
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: GameWrapper(
        controller: context.read<GameBloc>().gameController,
        child: BlocBuilder<GameBloc, GameState>(
          buildWhen: (previous, current) {
            // Don't rebuild for terminal states, we are transitioning to the summary page
            return current.mapOrNull(
                  terminal: (value) => false,
                ) ??
                true;
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
              terminal: (value) => const Text("This will be never shown"),
            );
          },
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
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
    ).toHero("game");
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
              ),
            ],
          ),
        ),
        const Gap(10),
      ]) {
        layout.add(element);
      }
    }

    return layout..removeLast();
  }

  UIPrimaryGameButton _buildAnswerButton(
    BuildContext context,
    GameRoundInProgress gameInProgress,
    int i,
  ) {
    return UIPrimaryGameButton(
      onTap: () =>
          context.read<GameBloc>().add(GameEvent.submitRound(answer: i)),
      key: gameInProgress.game.currentRound.answerPossibilities[i].$1,
      text: gameInProgress.game.currentRound.answerPossibilities[i].$2.$1,
    );
  }

  PrimaryContainer _tweetContent(
    BuildContext context,
    GameRoundInProgress gameInProgress,
  ) {
    var media =
        TweetService.getTweetById(gameInProgress.game.currentRound.tweetId)!
            .getMedia();

    return PrimaryContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(gameInProgress.game.currentRound.content),
          if (context
                  .read<UserBloc>()
                  .userSettings
                  .gameplaySettings
                  .enableImagesInTweets &&
              media != null &&
              media.any((element) => element.type != "video")) ...[
            const Gap(20),
            Expanded(
              child: CachedNetworkImage(
                imageUrl: media
                    .where((element) => element.type != "video")
                    .firstOrNull!
                    .url!,
                placeholder: (context, url) =>
                    const Center(child: CircularProgressIndicator()),
              ),
            ),
          ],
        ],
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
                    // TODO: Change to emit wrong answer!
                    context.read<GameBloc>().add(GameEvent.noTimeLeft());
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 1.h),
              child: GameScore(
                context: context,
                roundInProgress: value,
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
    required this.roundInProgress,
    required this.scoreNotifier,
  }) : super(key: key);

  final BuildContext context;
  final GameRoundInProgress roundInProgress;
  final ValueNotifier<int?> scoreNotifier;

  @override
  Widget build(BuildContext context) {
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
            child: ValueListenableBuilder(
              valueListenable: scoreNotifier,
              builder: (context, score, child) {
                return TweenAnimationBuilder<int>(
                  tween: IntTween(
                    begin: roundInProgress.game.points,
                    end: score ?? roundInProgress.game.points,
                  ),
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
