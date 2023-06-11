import 'package:tweetguess/core/bloc/game/game_bloc.dart';

abstract class GameEffectController {
  GameEffectController({
    required GameBloc bloc,
  });

  void triggerButtonFeedback(int index, bool rightAnswer);
}
