import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:tweetguess/core/bloc/user/user_bloc.dart';
import 'package:tweetguess/core/bloc/user/user_event.dart';
import 'package:tweetguess/core/data/models/user/settings/language.dart';
import 'package:tweetguess/modules/settings/widgets/section_header.dart';
import 'package:tweetguess/ui/components/primary_bottom_sheet.dart';

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
            subtitle: context
                .read<UserBloc>()
                .userSettings
                .appearance
                .name
                .capitalize,
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return const UIPrimaryBottomSheet(
                    child: _ThemeSelectionWidget(),
                  );
                },
              );
            },
            iconTint: Colors.blue,
          ),
          UISettingsTile(
            icon: Icons.language_outlined,
            title: "App Language",
            subtitle: context.read<UserBloc>().userSettings.language.langName,
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return const UIPrimaryBottomSheet(
                    child: _LangSelectionWidget(),
                  );
                },
              );
            },
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

class _ThemeSelectionWidget extends StatefulWidget {
  const _ThemeSelectionWidget();

  @override
  _ThemeSelectionWidgetState createState() => _ThemeSelectionWidgetState();
}

class _ThemeSelectionWidgetState extends State<_ThemeSelectionWidget> {
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

class _LangSelectionWidget extends StatefulWidget {
  const _LangSelectionWidget();

  @override
  _LangSelectionWidgetState createState() => _LangSelectionWidgetState();
}

class _LangSelectionWidgetState extends State<_LangSelectionWidget> {
  AppLanguage? _selectedTheme;

  @override
  Widget build(BuildContext context) {
    _selectedTheme ??= context.read<UserBloc>().state.settings.language;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ...AppLanguage.values.map(
          (e) {
            return RadioListTile(
              title: Text(e.langName),
              value: e,
              groupValue: _selectedTheme,
              onChanged: (value) {
                setState(() {
                  _selectedTheme = value;
                });
              },
            );
          },
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {
            context.read<UserBloc>().add(
                  UserSetLanguage(
                    newLanguage: _selectedTheme ?? AppLanguage.system,
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
