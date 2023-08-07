import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../ui/components/primary_game_button.dart';

part 'round.freezed.dart';

@freezed
class Round with _$Round {
  factory Round({
    required String tweetId,
    required String content,
    required List<
            (GlobalKey<UIPrimaryGameButtonState>, (String name, String handle))>
        answerPossibilities,

    /// The right answer is given here by the index
    required int rightAnswer,
    bool? answeredRight
  }) = _Round;
}
