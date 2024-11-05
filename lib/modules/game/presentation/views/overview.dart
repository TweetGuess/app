import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tweetguess/core/controller/share/share_controller.dart';
import 'package:tweetguess/core/utils/get_it.dart';
import 'package:tweetguess/core/utils/statistics.dart';
import 'package:tweetguess/ui/components/primary_container.dart';

import '../../../../ui/components/primary_button.dart';
import '../../domain/models/game.dart';

class OverviewExitScreen extends StatelessWidget {
  const OverviewExitScreen({super.key, required this.game});

  final Game game;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              context.pop();
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
              _HeadLine(game: game),
              const Spacer(),
              _Statistics(game: game),
              const Spacer(),
              _CTAButtons(game: game),
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
                title: "game.overview.statistics.points".tr(),
                value: game.points.toString(),
              ),
            ),
            const Gap(20),
            Expanded(
              child: _StatisticTile(
                title: "game.overview.statistics.rounds".tr(),
                value: game.pastRounds.length.toString(),
              ),
            ),
          ],
        ),
        const Gap(20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: _StatisticTile(
                title: "game.overview.statistics.accuracy".tr(),
                value: "${(game.accuracy * 100).toInt()} %",
              ),
            ),
            const Gap(20),
            Expanded(
              child: _StatisticTile(
                title: "game.overview.statistics.longest_streak".tr(),
                value: game.longestStreak.toString(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

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
  const _CTAButtons({required this.game});

  final Game game;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: UIPrimaryButton(
            height: 50,
            text: "game.overview.cta-buttons.play_again".tr(),
            onTap: () => context.push('/game'),
          ),
        ),
        const Gap(10),
        Expanded(
          child: SizedBox(
            height: 50,
            child: UIPrimaryButton(
              text: "game.overview.cta-buttons.share".tr(),
              icon: const Icon(Icons.share),
              onTap: () => _handleShare(context),
            ),
          ),
        ),
        const Gap(10),
        UIPrimaryButton(
          height: 50,
          text: "game.overview.cta-buttons.exit_game".tr(),
          onTap: () => context.pop(),
        ),
      ],
    );
  }

  Future<void> _handleShare(BuildContext context) async {
    try {
      await getIt<ShareController>().shareGameResults(
        points: game.points,
        rounds: game.pastRounds.length,
        shareText: "game.overview.share.text".tr(),
      );
    } catch (e) {
      if (!context.mounted) return;

      // Handle errors appropriately
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("game.overview.share.error".tr()),
        ),
      );
    }
  }
}

class _HeadLine extends StatelessWidget {
  const _HeadLine({required this.game});

  final Game game;

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      _getAppropriateHeadline(game.points),
      minFontSize: 35,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontFamily: "Pixeboy",
      ),
    );
  }

  String _getAppropriateHeadline(num points) {
    if (points > 100) {
      return 'game.overview.headline.high_points'.tr();
    } else if (points > 50) {
      return 'game.overview.headline.mid_points'.tr();
    } else {
      return 'game.overview.headline.low_points'.tr();
    }
  }
}
