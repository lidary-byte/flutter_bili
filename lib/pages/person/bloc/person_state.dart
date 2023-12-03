import 'package:flutter_bili/base/base_state.dart';
import 'package:flutter_bili/http/net_state.dart';

class PersonState extends BaseState {
  final bool? hasLogin;
  final int? index;
  final String? qrCode;
  const PersonState({super.netState, this.hasLogin, this.index, this.qrCode});

  PersonState copyWith(
      {NetState? netState, bool? hasLogin, int? index, String? qrCode}) {
    return PersonState(
        netState: netState ?? this.netState,
        hasLogin: hasLogin ?? this.hasLogin,
        qrCode: qrCode ?? this.qrCode,
        index: index ?? this.index);
  }

  @override
  List<Object?> get props => super.props + [hasLogin, index, qrCode];
}
