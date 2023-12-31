import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:get_it/get_it.dart';
import 'package:tweetguess/core/bloc/user/user_bloc.dart';
import 'package:tweetguess/core/bloc/user/user_event.dart';
import 'package:tweetguess/core/data/models/user/settings/language.dart';
import 'package:tweetguess/modules/settings/presentation/about.dart';
import 'package:tweetguess/modules/settings/widgets/section_header.dart';
import 'package:tweetguess/ui/components/primary_bottom_sheet.dart';
import 'package:tweetguess/ui/components/settings/settings_toggle.dart';
import 'package:tweetguess/ui/extensions/theme_mode.dart';

import '../../../ui/components/settings/settings_tile.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final userBloc = context.watch<UserBloc>();

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        forceMaterialTransparency: true,
        title: Text("settings.name".tr()),
      ),
      body: ListView(
        children: [
          // General Section
          SectionHeader(
            title: "settings.general.title".tr(),
          ),
          UISettingsTile(
            icon: Icons.color_lens_outlined,
            title: "settings.general.appearance.title".tr(),
            subtitle: userBloc.userSettings.appearance.langName,
            onPressed: () {
              _showThemeSelectionBS(context);
            },
            iconTint: Colors.blue,
          ),
          UISettingsTile(
            icon: Icons.language_outlined,
            title: "settings.general.lang.title".tr(),
            subtitle: userBloc.userSettings.language.langName,
            onPressed: () {
              _showLanguageSelectionBS(context);
            },
            iconTint: Colors.blue,
          ),
          // Account settings
          SectionHeader(
            title: "settings.account.title".tr(),
          ),
          UISettingsTile(
            icon: Icons.refresh_outlined,
            title: "settings.account.reset_stats.title".tr(),
            subtitle: "settings.account.reset_stats.sub".tr(),
            onPressed: () {
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (context) => _showResetStatsDialogue(context),
              );
            },
            iconTint: Colors.red,
          ),
          // Gameplay Settings
          SectionHeader(
            title: "settings.gameplay.title".tr(),
          ),
          UISettingsToggle(
            icon: Icons.image,
            title: "settings.gameplay.enable_images.title".tr(),
            subtitle: "settings.gameplay.enable_images.sub".tr(),
            onPressed: (value) {
              context.read<UserBloc>().add(
                    UserUpdateGameplaySettings(
                      gameplaySettings: userBloc.userSettings.gameplaySettings
                          .copyWith(enableImagesInTweets: value),
                    ),
                  );
            },
            iconTint: Colors.brown,
            initialValue:
                userBloc.userSettings.gameplaySettings.enableImagesInTweets,
          ),
          // "More" Settings
          SectionHeader(
            title: "settings.more.title".tr(),
          ),
          UISettingsTile(
            icon: Icons.feedback_outlined,
            title: "settings.more.feedback.title".tr(),
            subtitle: "settings.more.feedback.sub".tr(),
            onPressed: () {},
            iconTint: Colors.yellowAccent,
          ),
          UISettingsTile(
            icon: Icons.info_outlined,
            title: "settings.more.about.title".tr(),
            subtitle: "settings.more.about.sub".tr(),
            onPressed: () {
              Navigator.push(context, AboutScreen.route());
            },
            iconTint: Colors.yellowAccent,
          ),
        ],
      ),
    );
  }

  Future<dynamic> _showThemeSelectionBS(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return const UIPrimaryBottomSheet(
          child: _ThemeSelectionWidget(),
        );
      },
    );
  }

  Future<dynamic> _showLanguageSelectionBS(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return const UIPrimaryBottomSheet(
          child: _LangSelectionWidget(),
        );
      },
    );
  }

  AlertDialog _showResetStatsDialogue(BuildContext context) {
    return AlertDialog(
      title: Text("settings.account.reset_stats.dialog.title".tr()),
      content: Text("settings.account.reset_stats.dialog.body".tr()),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.of(context).pop(false),
          child: Text("global.no".tr()),
        ),
        TextButton(
          onPressed: () {
            GetIt.I<UserBloc>().add(UserResetStats());
          },
          child: Text("global.yes".tr()),
        ),
      ],
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
        Text(
          "settings.general.appearance.title".tr(),
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const Gap(10),
        RadioListTile(
          title: Text("settings.general.appearance.options.light".tr()),
          value: ThemeMode.light,
          groupValue: _selectedTheme,
          onChanged: (value) {
            setState(() {
              _selectedTheme = value;
            });
          },
        ),
        RadioListTile(
          title: Text("settings.general.appearance.options.dark".tr()),
          value: ThemeMode.dark,
          groupValue: _selectedTheme,
          onChanged: (value) {
            setState(() {
              _selectedTheme = value;
            });
          },
        ),
        RadioListTile(
          title: Text("settings.general.appearance.options.auto".tr()),
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
          child: Text("global.save".tr()),
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
        Text(
          "settings.general.lang.title".tr(),
          style: Theme.of(context).textTheme.titleLarge,
        ),
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
            // Also update language directly
            context.setLocale(_selectedTheme!.getLocale()!);
            context.read<UserBloc>().add(
                  UserSetLanguage(
                    newLanguage: _selectedTheme ?? AppLanguage.system,
                  ),
                );
            if (mounted) {
              Navigator.of(context).pop();
            }
          },
          child: Text("global.save".tr()),
        ),
      ],
    );
  }
}
