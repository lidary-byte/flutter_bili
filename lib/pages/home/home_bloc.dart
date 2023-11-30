import 'package:flutter_bili/pages/home/home_event.dart';
import 'package:flutter_bili/pages/home/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState()) {
    // on<SwitchPageEvent>(_switchPage);
  }

  //   Future _checkLogin(event, emit) async {
  //   UserInfoBean? userInfoBean = await UserStorage().getUserInfo();
  //   if (userInfoBean != null) {
  //     emit(state.copyWith(userInfoBean: userInfoBean));
  //   }
  // }
}
