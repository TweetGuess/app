import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../user/user_event.dart';
import '../user/user_state.dart';

class GameBloc extends Bloc<UserEvent, UserState> {
  GameBloc(super.initialState);
}
