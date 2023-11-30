import 'package:flutter_bili/base/base_state.dart';
import 'package:flutter_bili/http/entity/recommend_entity.dart';
import 'package:flutter_bili/http/net_state.dart';

class MainState extends BaseState {
  final List<RecommendItem>? recommend;

  const MainState({super.netState, this.recommend});

  MainState copyWith({NetState? netState, List<RecommendItem>? recommend}) {
    return MainState(
        netState: netState ?? this.netState,
        recommend: recommend ?? this.recommend);
  }

  @override
  List<Object?> get props => super.props + [recommend];
}
