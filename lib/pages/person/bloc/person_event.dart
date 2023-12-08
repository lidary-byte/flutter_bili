import 'package:equatable/equatable.dart';

sealed class PersonEvent extends Equatable {}

class SwitchLoginTabEvent extends PersonEvent {
  final int index;
  SwitchLoginTabEvent({required this.index});

  @override
  List<Object?> get props => [index];
}

class LoginEvent extends PersonEvent {
  final String username;
  final String password;
  LoginEvent({required this.username, required this.password});

  @override
  List<Object?> get props => [username, password];
}

class RefreshQrCodeEvent extends PersonEvent {
  @override
  List<Object?> get props => [];
}

class QrCodeStatusEvent extends PersonEvent {
  int? code;
  QrCodeStatusEvent({this.code});
  @override
  List<Object?> get props => [code];
}
