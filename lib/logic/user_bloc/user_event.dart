part of 'user_bloc.dart';

sealed class UserEvent extends Equatable {
  const UserEvent();

  @override
  List<Object> get props => [];
}

class UsersFetch extends UserEvent {}

class UsersAdded extends UserEvent {
  final String nama;
  final String umur;

  const UsersAdded({required this.nama, required this.umur});
  @override
  List<Object> get props => [nama, umur];
}

class UsersUpdated extends UserEvent {
  final List<Map<String, dynamic>> users;
  const UsersUpdated({required this.users});
  @override
  List<Object> get props => [users];
}
