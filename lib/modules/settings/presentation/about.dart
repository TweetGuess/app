import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tweetguess/ui/components/scaffold.dart';
import 'package:tweetguess/ui/utils/routes/slide_right_transition_route.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

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
