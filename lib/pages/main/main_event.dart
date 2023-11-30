sealed class MainEvent {}

/// tab切换
class SwitchTabEvent extends MainEvent {
  int selectIndex = 1;

  SwitchTabEvent(this.selectIndex);
}
