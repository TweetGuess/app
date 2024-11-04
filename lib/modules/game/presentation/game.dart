import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cached_network_image_platform_interface/cached_network_image_platform_interface.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tweetguess/core/bloc/user/user_bloc.dart';
import 'package:tweetguess/core/data/models/twitter/interface_tweet.dart';
import 'package:tweetguess/core/data/models/twitter/retwitt/media.dart';
import 'package:tweetguess/core/utils/date.dart';
import 'package:tweetguess/core/utils/tweet_service.dart';
import 'package:tweetguess/modules/game/presentation/widgets/score.dart';
import 'package:tweetguess/modules/game/presentation/widgets/timer.dart';
import 'package:tweetguess/ui/components/primary_game_button.dart';
import 'package:tweetguess/ui/extensions/app_bar.dart';
import 'package:tweetguess/ui/extensions/color.dart';

import '../../../ui/components/primary_container.dart';
import 'bloc/game_bloc.dart';
import 'bloc/game_state.dart';
import 'widgets/helper/wrapper.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  /// Used to access the TimerController to pause, resume & stop the timer
  final gameTimerKey = GlobalKey<CircularCountDownTimerState>();

  @override
  void initState() {
    super.initState();

    context.read<GameBloc>().initRound(
          context,
          gameTimerKey: gameTimerKey,
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: GameWrapper(
        controller: context.read<GameBloc>().gameUiController,
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
    var currentTweet =
        TweetService.getTweetById(gameInProgress.game.currentRound.tweetId)!;

    return PrimaryContainer(
      padding: const EdgeInsets.all(20).copyWith(bottom: 10),
      child: Column(
        children: [
          Expanded(
            child: _buildInnerTweetContent(
              gameInProgress,
              context,
              currentTweet.getMedia(),
            ),
          ),
          if (currentTweet.createdAt != null) ...[
            const Gap(10),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                currentTweet.createdAt!.toDateTimeFormatMMMdY(context),
                style: TextStyle(
                  fontFamily: "Pixeboy",
                  fontWeight: FontWeight.w100,
                  color: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .color!
                      .lighten(0.6),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }

  Column _buildInnerTweetContent(
    GameRoundInProgress gameInProgress,
    BuildContext context,
    List<Media>? media,
  ) {
    return Column(
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
              imageRenderMethodForWeb: ImageRenderMethodForWeb.HttpGet,
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
