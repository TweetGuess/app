import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boring_avatars/flutter_boring_avatars.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tweetguess/core/bloc/user/user_bloc.dart';
import 'package:tweetguess/ui/components/draggable_scaffold.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    final userBloc = context.watch<UserBloc>();

    return DraggableScaffold(
      bodyChild: const Text("GG"),
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
              child: AnimatedBoringAvatars(
                duration: const Duration(seconds: 1),
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
