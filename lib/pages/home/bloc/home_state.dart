import 'package:flutter_bili/base/base_state.dart';
import 'package:flutter_bili/http/entity/live_recommend_entity.dart';
import 'package:flutter_bili/http/entity/recommend_entity.dart';
import 'package:flutter_bili/http/net_state.dart';

class HomeState extends BaseState {
  final int? index;
  final List<RecommendItem>? recommend;
  final List<LiveRecommendList>? recommendList;
  const HomeState(
      {super.netState, this.index, this.recommend, this.recommendList});

  HomeState copyWith(
      {NetState? netState,
      int? index,
      bool? animReverse,
      List<RecommendItem>? recommend,
      List<LiveRecommendList>? recommendList}) {
    return HomeState(
        netState: netState ?? this.netState,
        index: index ?? this.index,
        recommend: recommend ?? this.recommend,
        recommendList: recommendList ?? this.recommendList);
  }

  @override
  List<Object?> get props => super.props + [recommend, recommendList];
}
