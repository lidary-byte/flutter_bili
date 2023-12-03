import 'package:flutter_bili/base/base_state.dart';
import 'package:flutter_bili/http/entity/live_recommend_entity.dart';
import 'package:flutter_bili/http/entity/recommend_entity.dart';
import 'package:flutter_bili/http/net_state.dart';

class HomeState extends BaseState {
  final List<RecommendItem>? recommend;
  final List<LiveRecommendList>? recommendList;
  const HomeState({super.netState, this.recommend, this.recommendList});

  HomeState copyWith(
      {NetState? netState,
      bool? animReverse,
      List<RecommendItem>? recommend,
      List<LiveRecommendList>? recommendList}) {
    return HomeState(
        netState: netState ?? this.netState,
        recommend: recommend ?? this.recommend,
        recommendList: recommendList ?? this.recommendList);
  }

  @override
  List<Object?> get props => super.props + [recommend, recommendList];
}
