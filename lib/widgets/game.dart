import 'package:flutter/material.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: GestureDetector(
        onTap: () {
          // Pop route back to the one before
          Navigator.pop(context);
        },
        child: Container(
          color: Colors.blue,
          child: const Center(
            child: Text('TODO'),
          ),
        ),
      ),
    );
  }
}
