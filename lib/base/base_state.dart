import 'package:equatable/equatable.dart';
import 'package:flutter_bili/http/net_state.dart';

abstract class BaseState extends Equatable {
  final NetState netState;

  const BaseState({this.netState = NetState.initializeState});

  @override
  List<Object?> get props => [netState];
}
