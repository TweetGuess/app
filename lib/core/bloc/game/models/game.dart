// ignore_for_file: unused_element

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tweetguess/core/bloc/game/models/round.dart';

part 'game.freezed.dart';
part 'game.g.dart';

@freezed
class Game with _$Game {
  factory Game._({
    @Default(0) int points,
    @Default([]) List<String> usedTweets,
    @Default(3) int lives,
    @Default(30) int timeLeft,
    required Round currentRound,
  }) = _Game;

  factory Game() {
    return _Game(currentRound: _generateRound());
  }

  factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);

  static Round _generateRound() {
    throw "error";
  }
}
