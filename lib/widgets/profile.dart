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

import '../ui/components/infotile.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final userBloc = context.watch<UserBloc>();

    var colors = generateAvatarColors(userBloc.state.username);

    return DraggableScaffold(
      bodyChild: [
        const Gap(20),
        SizedBox(
          height: 40.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              const Gap(18),
              Flexible(
                fit: FlexFit.tight,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: InfoTile(
                        isGradient: true,
                        gradientColors: colors,
                        data: '${userBloc.state.statistics.accuracyOfGuesses}',
                        title: "Accuracy of Guesses",
                      ),
                    ),
                    const Gap(18),
                    Expanded(
                      child: InfoTile(
                        isGradient: true,
                        gradientColors: colors,
                        data: '${userBloc.state.statistics.longestStreak}',
                        title: "Longest Streak",
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
                        data: '${userBloc.state.statistics.roundsPlayed}',
                        title: "Rounds Played",
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(18),
            ],
          ),
        )
      ],
      title: const Text(
        "Profile",
      ),
      headerWidget: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              width: 100,
              height: 100,
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
          AutoSizeText(
            userBloc.state.username,
            style: GoogleFonts.robotoMono(
              textStyle: TextStyle(fontSize: 20.sp),
            ),
          ),
        ],
      ),
    );
  }
}
