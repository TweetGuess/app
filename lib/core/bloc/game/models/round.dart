import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tweetguess/models/Tweet.dart';

part 'round.freezed.dart';
part 'round.g.dart';

@freezed
class Round with _$Round {
  factory Round({
    required Tweet currentTweet,
    required List<String> answerPossibilities,
  }) = _Round;

  factory Round.fromJson(Map<String, dynamic> json) => _$RoundFromJson(json);
}
