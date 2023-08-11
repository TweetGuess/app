import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boring_avatars/flutter_boring_avatars.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tweetguess/core/bloc/user/user_bloc.dart';
import 'package:tweetguess/ui/components/draggable_scaffold.dart';
import 'package:tweetguess/ui/utils/avatar_utilities.dart';

import '../../../ui/components/infotile.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late List<Color> colors;
  @override
  void initState() {
    super.initState();
    colors = generateAvatarColors(context.read<UserBloc>().state.username);
  }

  @override
  Widget build(BuildContext context) {
    final userBloc = context.watch<UserBloc>();

    var scrollController = ScrollController();

    return DraggableScaffold(
      scrollController: scrollController,
      bodyChild: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
              child: AutoSizeText(
                "All Time Statistics",
                minFontSize: 20,
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            const Gap(20),
            Row(
              children: [
                Flexible(
                  child: InfoTile(
                    isGradient: true,
                    gradientColors: colors,
                    data: '${(userBloc.state.statistics.gamesPlayed)}',
                    title: "Games Played",
                    icon: Icons.gamepad_outlined,
                  ),
                ),
                const Gap(10),
                Flexible(
                  child: InfoTile(
                    isGradient: true,
                    gradientColors: colors,
                    data: '${userBloc.state.statistics.roundsPlayed}',
                    title: "Rounds Played",
                    icon: Icons.history,
                  ),
                )
              ],
            ),
            const Gap(10),
            SizedBox(
              height: 17.h,
              child: Row(
                children: [
                  Flexible(
                    child: InfoTile(
                      isGradient: true,
                      gradientColors: colors,
                      data: '${(userBloc.state.statistics.gamesPlayed)}',
                      title: "All-time Point Count",
                      icon: Icons.score,
                    ),
                  ),
                  const Gap(10),
                  Flexible(
                    child: Opacity(
                      opacity: 0.5,
                      child: InfoTile(
                        isGradient: true,
                        gradientColors: colors,
                        data: '...',
                        title: "Coming Soon",
                        icon: Icons.hourglass_empty,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const Gap(30),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
              child: AutoSizeText(
                "More interesting stuff...",
                minFontSize: 20,
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            const Gap(10),
            SizedBox(
              height: 45.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Flexible(
                    fit: FlexFit.tight,
                    child: Column(
                      key: ValueKey(userBloc.state.username),
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: InfoTile(
                            isGradient: true,
                            gradientColors: colors,
                            data:
                                '${(userBloc.state.statistics.accuracyOfGuesses * 100).toInt()} %',
                            title: "Accuracy of Guesses",
                            icon: Icons.check,
                          ),
                        ),
                        const Gap(18),
                        Expanded(
                          child: InfoTile(
                            isGradient: true,
                            gradientColors: colors,
                            data: '${userBloc.state.statistics.longestStreak}',
                            title: "Longest Streak",
                            icon: Icons.trending_up,
                          ),
                        )
                      ],
                    ),
                  ),
                  const Gap(18),
                  Flexible(
                    child: Column(
                      children: [
                        Expanded(
                          child: InfoTile(
                            isGradient: true,
                            gradientColors: colors,
                            data:
                                '${userBloc.state.statistics.roundsPlayed / userBloc.state.statistics.gamesPlayed}',
                            title: "Avg. Rounds Per Game",
                            icon: Icons.av_timer,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Gap(270),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ColorFiltered(
                  // Grayscale Matrix that doesn't affect transparent bits
                  colorFilter: const ColorFilter.matrix(<double>[
                    0.2126,
                    0.7152,
                    0.0722,
                    0,
                    0,
                    0.2126,
                    0.7152,
                    0.0722,
                    0,
                    0,
                    0.2126,
                    0.7152,
                    0.0722,
                    0,
                    0,
                    0,
                    0,
                    0,
                    1,
                    0,
                  ]),
                  child: Image.asset(
                    "assets/icons/mario.png",
                    height: 50,
                  ),
                ),
                const Gap(10),
                const AutoSizeText("More to come soon!"),
                const Gap(16),
              ],
            )
          ],
        ),
      ),
      title: const Text(
        "Profile",
      ),
      headerWidget: Padding(
        padding: EdgeInsets.only(top: AppBar().preferredSize.height),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
                width: 15.h,
                height: 15.h,
                child: BoringAvatars(
                  colors: const [
                    Color(0xff00325b),
                    Color(0xff54a9ec),
                    Color(0xffD0E3EA),
                    Color(0xffFCF7E7),
                    Color(0xffC24C32)
                  ],
                  name: userBloc.state.username,
                ),
              ),
            ),
            const Gap(16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AutoSizeText(
                  userBloc.state.username,
                  style: GoogleFonts.robotoMono(
                    textStyle: TextStyle(fontSize: 20.sp),
                  ),
                ),
                const Gap(4),
                IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: () => showDialog(
                    context: context,
                    builder: (context) => const _ChangeUsernameDialogue(),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _ChangeUsernameDialogue extends StatefulWidget {
  const _ChangeUsernameDialogue();

  @override
  State<_ChangeUsernameDialogue> createState() =>
      _ChangeUsernameDialogueState();
}

class _ChangeUsernameDialogueState extends State<_ChangeUsernameDialogue> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            color: Theme.of(context).colorScheme.surface,
          ),
          height: 20.h,
          width: 80.w,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              children: [
                AutoSizeText(
                  "Please input your new username:",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
                // TODO
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Your new username',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
