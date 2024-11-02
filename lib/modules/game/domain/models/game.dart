// ignore_for_file: unused_element

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tweetguess/modules/game/domain/models/round.dart';

import '../../data/const.dart';
import '../../presentation/bloc/utils/game.dart';

part 'game.freezed.dart';

@freezed
class Game with _$Game {
  factory Game._({
    @Default(0) int points,
    @Default([]) List<Round> pastRounds,
    @Default(GameConstants.MAX_LIVES) int lives,
    @Default(false) bool isPaused,
    required Round currentRound,
    @Default(GameConstants.MAX_JOKERS) int jokersLeft,
  }) = _Game;

  factory Game() {
    var initialRound = GameUtils.generateRound();

    return _Game(
      currentRound: initialRound,
    );
  }
}
