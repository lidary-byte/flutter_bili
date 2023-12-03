import 'package:flutter_bili/pages/main/bloc/main_event.dart';
import 'package:flutter_bili/pages/main/bloc/main_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(const MainState(index: 0)) {
    on<SwitchPageEvent>((event, emit) => _switchPage(event, emit));
  }

  void _switchPage(SwitchPageEvent event, emit) {
    if (state.index == event.selectIndex) {
      return;
    }
    emit(state.copyWith(
        index: event.selectIndex,
        animReverse: event.selectIndex < (state.index ?? 0)));
  }
}
