import 'package:flutter_bili/base/base_state.dart';
import 'package:flutter_bili/http/entity/user_info_entity.dart';
import 'package:flutter_bili/http/net_state.dart';

class PersonState extends BaseState {
  final bool? hasLogin;
  final int? index;
  final String? qrCode;
  final String? qrCodeStatus;
  final UserInfoEntity? userInfoEntity;
  const PersonState(
      {super.netState,
      this.hasLogin,
      this.index,
      this.qrCode,
      this.qrCodeStatus,
      this.userInfoEntity});

  PersonState copyWith(
      {NetState? netState,
      bool? hasLogin,
      int? index,
      String? qrCode,
      String? qrCodeStatus,
      UserInfoEntity? userInfoEntity}) {
    return PersonState(
        netState: netState ?? this.netState,
        hasLogin: hasLogin ?? this.hasLogin,
        qrCode: qrCode ?? this.qrCode,
        index: index ?? this.index,
        qrCodeStatus: qrCodeStatus ?? this.qrCodeStatus,
        userInfoEntity: userInfoEntity ?? this.userInfoEntity);
  }

  @override
  List<Object?> get props =>
      super.props + [hasLogin, index, qrCode, qrCodeStatus, userInfoEntity];
}
