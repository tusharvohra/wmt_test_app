part of 'user_bloc.dart';

@immutable
abstract class UserState {}

class UserInitial extends UserState {}

class LoadingState extends UserState {}

class ResponseState extends UserState {
  final UserList userList;

  ResponseState(this.userList);
}
