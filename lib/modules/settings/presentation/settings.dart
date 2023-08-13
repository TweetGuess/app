import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:tweetguess/core/bloc/user/user_bloc.dart';
import 'package:tweetguess/core/bloc/user/user_event.dart';
import 'package:tweetguess/modules/settings/widgets/section_header.dart';

import '../../../ui/components/settings_tile.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        forceMaterialTransparency: true,
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
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Container(
                    decoration: BoxDecoration(
                      color: colorScheme.surface,
                      borderRadius:
                          const BorderRadius.vertical(top: Radius.circular(16)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 48,
                            height: 4,
                            decoration: BoxDecoration(
                              color: colorScheme.onSurface.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(2),
                            ),
                          ),
                          const SizedBox(height: 16),
                          const ThemeSelectionWidget(),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
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
            subtitle: "Oh no no no",
            onPressed: () {
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (context) => AlertDialog(
                  title: const Text('Are you sure?'),
                  content: const Text('Do you want to reset your Stats?'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(false),
                      child: const Text('No'),
                    ),
                    TextButton(
                      onPressed: () {
                        GetIt.I<UserBloc>().add(UserResetStats());
                      },
                      child: const Text('Yes'),
                    ),
                  ],
                ),
              );
            },
            iconTint: Colors.red,
          ),
          const SectionHeader(
            title: "More",
          ),
          UISettingsTile(
            icon: Icons.feedback_outlined,
            title: "Feedback",
            subtitle: "Let me know what you think!",
            onPressed: () {},
            iconTint: Colors.yellowAccent,
          ),
          UISettingsTile(
            icon: Icons.info_outlined,
            title: "About",
            subtitle: "TweetGuess",
            onPressed: () {},
            iconTint: Colors.yellowAccent,
          ),
        ],
      ),
    );
  }
}

class ThemeSelectionWidget extends StatefulWidget {
  const ThemeSelectionWidget({super.key});

  @override
  _ThemeSelectionWidgetState createState() => _ThemeSelectionWidgetState();
}

class _ThemeSelectionWidgetState extends State<ThemeSelectionWidget> {
  ThemeMode? _selectedTheme;

  @override
  Widget build(BuildContext context) {
    _selectedTheme ??= context.read<UserBloc>().state.settings.appearance;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        RadioListTile(
          title: const Text("Light"),
          value: ThemeMode.light,
          groupValue: _selectedTheme,
          onChanged: (value) {
            setState(() {
              _selectedTheme = value;
            });
          },
        ),
        RadioListTile(
          title: const Text("Dark"),
          value: ThemeMode.dark,
          groupValue: _selectedTheme,
          onChanged: (value) {
            setState(() {
              _selectedTheme = value;
            });
          },
        ),
        RadioListTile(
          title: const Text("System Default"),
          value: ThemeMode.system,
          groupValue: _selectedTheme,
          onChanged: (value) {
            setState(() {
              _selectedTheme = value;
            });
          },
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {
            context.read<UserBloc>().add(
                  UserSetAppearance(
                    appearance: _selectedTheme ?? ThemeMode.system,
                  ),
                );
            if (mounted) {
              Navigator.of(context).pop();
            }
          },
          child: const Text("Save"),
        ),
      ],
    );
  }
}
