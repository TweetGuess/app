import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tweetguess/core/utils/statistics.dart';
import 'package:tweetguess/ui/components/primary_container.dart';

import '../bloc/models/game.dart';
import '../../../../ui/components/primary_button.dart';
import '../../../../ui/utils/routes/circular_transition_route.dart';
import '../game.dart';

class OverviewExitScreen extends StatelessWidget {
  const OverviewExitScreen({super.key, required this.game});

  final Game game;

  static Route route({
    bool countdownEnabled = true,
    required Game game,
    Duration transitionDuration = const Duration(milliseconds: 600),
  }) {
    return CircularTransitionRoute(
      page: OverviewExitScreen(game: game),
      settings: const RouteSettings(name: "/game/overview"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0).copyWith(top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const _HeadLine(),
              const Spacer(),
              _Statistics(game: game),
              const Spacer(),
              const _CTAButtons()
            ],
          ),
        ),
      ),
    );
  }
}

class _Statistics extends StatelessWidget {
  const _Statistics({
    required this.game,
  });

  final Game game;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: _StatisticTile(
                title: "Points",
                value: game.points.toString(),
              ),
            ),
            const Gap(20),
            Expanded(
              child: _StatisticTile(
                title: "Rounds",
                value: game.pastRounds.length.toString(),
              ),
            )
          ],
        ),
        const Gap(20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: _StatisticTile(
                title: "Accuracy",
                value: "${(game.accuracy * 100).toInt()} %",
              ),
            ),
            const Gap(20),
            Expanded(
              child: _StatisticTile(
                title: "Longest Streak",
                value: game.longestStreak.toString(),
              ),
            )
          ],
        ),
      ],
    );
  }
}

// TODO: Make Container to component and replace here and in other files
class _StatisticTile extends StatelessWidget {
  const _StatisticTile({
    required this.title,
    required this.value,
  });

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return PrimaryContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).hintColor,
            ),
          ),
          const Gap(20),
          Text(
            value,
            style: TextStyle(
              fontFamily: "Pixeboy",
              fontSize: 30.sp,
            ),
          ),
        ],
      ),
    );
  }
}

class _CTAButtons extends StatelessWidget {
  const _CTAButtons();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: UIPrimaryButton(
            height: 50,
            text: "Play again",
            onTap: () =>
                Navigator.of(context).pushReplacement(GameScreen.route()),
          ),
        ),
        const Gap(20),
        Expanded(
          child: UIPrimaryButton(
            height: 50,
            text: "Exit",
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
        )
      ],
    );
  }
}

class _HeadLine extends StatelessWidget {
  const _HeadLine();

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      'game.summary.headline.low_points'.tr(),
      minFontSize: 35,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontFamily: "Pixeboy",
      ),
    );
  }
}
