import 'package:equatable/equatable.dart';

sealed class HomeEvent extends Equatable {}

class SwitchTabEvent extends HomeEvent {
  final int selectIndex;

  SwitchTabEvent(this.selectIndex);

  @override
  List<Object?> get props => [selectIndex];
}
