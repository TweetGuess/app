import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const gitHubURL = "https://github.com/TweetGuess/app";

class WebWrapper extends StatelessWidget {
  const WebWrapper({super.key, required this.child});

  final Widget child;

  Future<void> _launchGithub() async {
    if (await canLaunchUrl(Uri.parse(gitHubURL))) {
      await launchUrl(Uri.parse(gitHubURL));
    }
  }

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      // We only use Directionality because our stack is outside of MaterialApp and some stuff is just breaking here already.
      return Directionality(
        textDirection: TextDirection.ltr,
        child: Stack(
          children: [
            child,
            Positioned(
              bottom: 16,
              right: 16,
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: _launchGithub,
                  child: Image.asset(
                    "assets/icons/github.png",
                    width: 32,
                    height: 32,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    } else {
      return child;
    }
  }
}
