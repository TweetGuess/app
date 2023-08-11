import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:tweetguess/core/bloc/user/user_bloc.dart';
import 'package:tweetguess/core/bloc/user/user_event.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Settings"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: const Text('Reset Statistics'),
            onTap: () {
              GetIt.I<UserBloc>().add(UserResetStats());
            },
          ),
          ListTile(
            title: const Text('Change App Appearance'),
            onTap: () {
              // TODO: Implement change app appearance functionality
            },
          ),
          ListTile(
            title: const Text('Change App Language'),
            onTap: () {
              // TODO: Implement change app language functionality
            },
          ),
        ],
      ),
    );
  }
}
