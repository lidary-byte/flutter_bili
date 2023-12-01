import 'package:flutter_bili/http/dio_client.dart';
import 'package:flutter_bili/http/entity/live_recommend_entity.dart';
import 'package:flutter_bili/http/entity/recommend_entity.dart';
import 'package:flutter_bili/http/net_state.dart';
import 'package:flutter_bili/pages/home/bloc/home_event.dart';
import 'package:flutter_bili/pages/home/bloc/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState()) {
    on<SwitchTabEvent>((event, emit) {
      switch (event.selectIndex) {
        case 0:
          return _recommendLive(event, emit);
        case 1:
          return _recommend(event, emit);
      }
    });
  }

  Future _recommendLive(SwitchTabEvent event, emit) async {
    emit(state.copyWith(netState: NetState.loadingState));

    if (state.recommendList?.isNotEmpty == true) {
      // 有旧数据 直接拿
      emit(state.copyWith(netState: NetState.successState, index: 0));
      return;
    }

    final recommend = await DioClient().get<LiveRecommendEntity>(
        'https://api.live.bilibili.com/xlive/web-interface/v1/second/getUserRecommend',
        params: {
          'page': 1,
          'page_size': 20,
          'platform': 'web',
        });
    if (recommend.isSuccess) {
      emit(state.copyWith(
          netState: NetState.successState,
          index: 0,
          recommendList: recommend.data?.list ?? []));
    } else {
      emit(state.copyWith(netState: NetState.errorState, index: 0));
    }
  }

  // 推荐数据
  Future _recommend(SwitchTabEvent event, emit) async {
    emit(state.copyWith(netState: NetState.loadingState));

    if (state.recommend?.isNotEmpty == true) {
      // 有旧数据 直接拿
      emit(state.copyWith(netState: NetState.successState, index: 1));
      return;
    }
    // ps : 请求的个数
    // refresh_idx: 刷新的次数
    final recommend = await DioClient()
        .get<RecommendEntity>('web-interface/wbi/index/top/feed/rcmd', params: {
      'feed_version': 'V3',
      'ps': 20,
      'refresh_idx': 1,
    });
    if (recommend.isSuccess) {
      emit(state.copyWith(
          netState: NetState.successState,
          index: 1,
          recommend: recommend.data?.item));
    } else {
      emit(state.copyWith(netState: NetState.errorState, index: 1));
    }
  }
}
