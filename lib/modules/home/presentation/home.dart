import 'dart:io';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tweetguess/modules/game/presentation/bloc/game_bloc.dart';
import 'package:tweetguess/modules/profile/presentation/profile.dart';
import 'package:tweetguess/modules/settings/presentation/settings.dart';

import '../../../ui/utils/routes/circular_transition_route.dart';
import '../../game/presentation/game.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          systemNavigationBarColor: Theme.of(context).colorScheme.surface,
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "TweetGuess",
        ),
        actions: [
          IconButton(
            icon: GestureDetector(
              onTapUp: (details) {
                Navigator.of(context).push(
                  CircularTransitionRoute(
                    page: const SettingsPage(),
                    offset: details.globalPosition,
                    transitionDuration: const Duration(milliseconds: 300),
                  ),
                );
              },
              child: const Icon(Icons.settings),
            ),
            onPressed: () {},
          )
        ],
        leading: _buildLeading(context),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.only(
            top: 15.h,
            bottom: 7.5.h,
            left: 15.w,
            right: 15.w,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 3,
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: AutoSizeText(
                    "mainpage.header".tr(),
                    textAlign: TextAlign.center,
                    style: GoogleFonts.robotoMono(),
                  ),
                ),
              ),
              Expanded(
                flex: 8,
                child: Column(
                  children: [
                    Expanded(
                      flex: 8,
                      child: Image.asset(
                        "assets/images/earth.png",
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Expanded(
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: AutoSizeText(
                          "mainpage.gamemodes.global".tr(),
                          textAlign: TextAlign.center,
                          style: GoogleFonts.robotoMono(
                            textStyle: TextStyle(fontSize: 5.sp),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const Spacer(),
              Expanded(
                flex: 6,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 8.h),
                  child: _buildStartGameButton(context),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding _buildLeading(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTapUp: (details) {
          Navigator.of(context).push(
            CircularTransitionRoute(
              page: const ProfilePage(),
              offset: details.globalPosition,
              transitionDuration: const Duration(milliseconds: 300),
            ),
          );
        },
        child: CircleAvatar(
          radius: 55.0,
          backgroundColor: Theme.of(context).colorScheme.background,
          child: const Icon(Icons.person),
        ),
      ),
    );
  }

  ElevatedButton _buildStartGameButton(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(padding: EdgeInsets.zero),
      onPressed: () {},
      child: Stack(
        children: [
          Center(
            child: Text(
              "mainpage.startgame-button".tr(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "Pixeboy",
                fontSize: 25.sp,
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: BlocProvider<GameBloc>(
              create: (_) => GameBloc(),
              child: GestureDetector(
                onTapUp: (details) => Navigator.of(context).push(
                  GameScreen.route(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
