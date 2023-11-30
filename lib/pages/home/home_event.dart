sealed class HomeEvent {}

class SwitchPageEvent extends HomeEvent {
  int selectIndex = 0;

  SwitchPageEvent(this.selectIndex);
}

class CheckLoginEvent extends HomeEvent {}

class LoginPageEvent extends HomeEvent {}
