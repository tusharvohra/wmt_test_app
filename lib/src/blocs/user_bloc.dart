import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:wmt_test_app/src/models/user_list.dart';
import 'package:wmt_test_app/src/networking/repository.dart';

part 'user_event.dart';

part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserInitial());

  Repository _repository = Repository();

  @override
  Stream<UserState> mapEventToState(
    UserEvent event,
  ) async* {
    if (event is GetUserListEvent) {
      yield LoadingState();
      Map<String, String> _params = {
        "page": event.page,
        "results": event.results
      };
      UserList userList = await _repository.getUserList(_params);
      yield ResponseState(userList);
    }
  }
}
