import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tweetguess/ui/components/scaffold.dart';
import 'package:tweetguess/ui/utils/routes/slide_right_transition_route.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  // Have another Route so we can keep the RouteSettings
  static Route route() {
    return SlideRightTransition(
      page: const AboutScreen(),
      settings: const RouteSettings(name: "/about"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return UIScaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        forceMaterialTransparency: true,
        title: Text("about.title".tr()),
      ),
    );
  }
}
