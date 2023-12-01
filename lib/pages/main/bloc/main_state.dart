import 'package:flutter_bili/base/base_state.dart';
import 'package:flutter_bili/http/net_state.dart';

class MainState extends BaseState {
  final int? index;
  final bool? animReverse;
  const MainState({super.netState, this.animReverse, this.index});

  MainState copyWith({NetState? netState, int? index, bool? animReverse}) {
    return MainState(
        netState: netState ?? this.netState,
        index: index ?? this.index,
        animReverse: animReverse ?? this.animReverse);
  }

  @override
  List<Object?> get props => super.props + [index, animReverse];
}
