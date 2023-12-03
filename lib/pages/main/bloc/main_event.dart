import 'package:equatable/equatable.dart';

sealed class MainEvent extends Equatable {}

class SwitchPageEvent extends MainEvent {
  final int selectIndex;

  SwitchPageEvent(this.selectIndex);

  @override
  List<Object?> get props => [selectIndex];
}
