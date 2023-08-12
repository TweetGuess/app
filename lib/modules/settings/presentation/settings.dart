import 'package:flutter/material.dart';
import 'package:tweetguess/modules/settings/widgets/section_header.dart';

import '../../../ui/components/settings_tile.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Settings"),
      ),
      body: ListView(
        children: [
          const SectionHeader(
            title: "General",
          ),
          UISettingsTile(
            icon: Icons.color_lens_outlined,
            title: "App Appearance",
            subtitle: "Dark",
            onPressed: () {},
            iconTint: Colors.blue,
          ),
          UISettingsTile(
            icon: Icons.language_outlined,
            title: "App Language",
            subtitle: "English",
            onPressed: () {},
            iconTint: Colors.blue,
          ),
          const SectionHeader(
            title: "Account",
          ),
          UISettingsTile(
            icon: Icons.refresh_outlined,
            title: "Reset Statistics",
            subtitle: "Dark",
            onPressed: () {},
            iconTint: Colors.red,
          ),
          const SectionHeader(
            title: "More",
          ),
          UISettingsTile(
            icon: Icons.feedback_outlined,
            title: "Feedback",
            subtitle: "Yo",
            onPressed: () {},
            iconTint: Colors.yellowAccent,
          ),
          UISettingsTile(
            icon: Icons.info_outlined,
            title: "About",
            subtitle: "Yo",
            onPressed: () {},
            iconTint: Colors.yellowAccent,
          ),
        ],
      ),
    );
  }
}
