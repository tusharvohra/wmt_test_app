part of 'user_bloc.dart';

@immutable
abstract class UserEvent {}

class GetUserListEvent extends UserEvent{
  final String page, results;
  GetUserListEvent(this.page, this.results);
}
