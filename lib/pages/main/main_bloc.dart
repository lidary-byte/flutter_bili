import 'package:flutter_bili/http/dio_client.dart';
import 'package:flutter_bili/http/entity/recommend_entity.dart';
import 'package:flutter_bili/http/net_state.dart';
import 'package:flutter_bili/pages/main/main_event.dart';
import 'package:flutter_bili/pages/main/main_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(const MainState(recommend: [])) {
    on<SwitchTabEvent>(_recommend);
    add(SwitchTabEvent(1));
  }

  // 推荐数据
  Future _recommend(SwitchTabEvent event, emit) async {
    emit(state.copyWith(netState: NetState.loadingState));
    if (event.selectIndex != 1) {
      return;
    }
    if (state.recommend?.isNotEmpty == true) {
      // 有旧数据 直接拿
      emit(state.copyWith(netState: NetState.successState));
      return;
    }
    final recommend = await DioClient()
        .get<RecommendEntity>('web-interface/index/top/rcmd', params: {
      'fresh_type': 3,
      'version': 1,
      'ps': 10,
      'fresh_idx': 1,
      'fresh_idx_1h': 1
    });
    if (recommend.isSuccess) {
      emit(state.copyWith(
          netState: NetState.successState, recommend: recommend.data?.item));
    } else {
      emit(state.copyWith(netState: NetState.errorState));
    }
  }
}
