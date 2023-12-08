import 'dart:async';

import 'package:flutter_bili/http/dio_client.dart';
import 'package:flutter_bili/http/entity/captcha_entity.dart';
import 'package:flutter_bili/http/entity/login_qrcode_status_entity.dart';
import 'package:flutter_bili/http/entity/qrcode_generate_entity.dart';
import 'package:flutter_bili/http/entity/user_info_entity.dart';
import 'package:flutter_bili/http/entity/web_key_entity.dart';
import 'package:flutter_bili/pages/person/bloc/person_event.dart';
import 'package:flutter_bili/pages/person/bloc/person_state.dart';
import 'package:flutter_bili/utils/global_util.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PersonBloc extends Bloc<PersonEvent, PersonState> {
  Timer? _timer;

  PersonBloc() : super(const PersonState(index: 0)) {
    on<LoginEvent>((event, emit) => _login(event, emit));
    on<SwitchLoginTabEvent>((event, emit) => _switchTab(event, emit));
    on<RefreshQrCodeEvent>((event, emit) => _qrCode(emit));
    on<QrCodeStatusEvent>((event, emit) => _qrCodeStatus(event, emit));
  }

  Future _qrCode(emit) async {
    if (state.qrCode?.isNotEmpty == true) {
      return;
    }
    final response = await DioClient().get<QrcodeGenerateEntity>(
      'https://passport.bilibili.com/x/passport-login/web/qrcode/generate',
    );
    if (response.isSuccess) {
      emit(state.copyWith(qrCode: response.data?.url));
    }
    _checkLoginStatus(response.data?.qrcodeKey ?? '', emit);
  }

  // 检查二维码状态
  Future _checkLoginStatus(String qrcodeKey, emit) async {
    _closeTimer();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) async {
      final response = await DioClient().get<LoginQrcodeStatusEntity>(
        'https://passport.bilibili.com/x/passport-login/web/qrcode/poll',
        params: {'qrcode_key': qrcodeKey},
      );
      add(QrCodeStatusEvent(code: response.data?.code));
    });
  }

  // 获取登录信息
  Future<UserInfoEntity?> _userInfo() async {
    _closeTimer();
    return (await DioClient().get<UserInfoEntity>('web-interface/nav')).data;
  }

  Future _qrCodeStatus(QrCodeStatusEvent event, emit) async {
    if (event.code == 0) {
      final userInfo = await _userInfo();
      emit(state.copyWith(userInfoEntity: userInfo));
    } else if (event.code == 86038) {
      _closeTimer();
      emit(state.copyWith(qrCodeStatus: '已失效', qrCode: ''));
    } else if (event.code == 86090) {
      _closeTimer();
      emit(state.copyWith(qrCodeStatus: '请在手机端确认', qrCode: ''));
    }
  }

  Future _login(LoginEvent event, emit) async {
    emit(state.copyWith(
        hasLogin: event.username.isEmpty && event.password.isEmpty));
    // 申请captcha验证码
    // https://passport.bilibili.com/x/passport-login/captcha?source=main_web
    DioClient().get<CaptchaEntity>(
        'https://passport.bilibili.com/x/passport-login/captcha?source=main_web');

    //  获取公钥和盐(web端)
    final webKey = await DioClient().get<WebKeyEntity>(
        'https://passport.bilibili.com/x/passport-login/web/key');

    await DioClient().post(
        "https://passport.bilibili.com/x/passport-login/web/login",
        data: {
          'username': event.username,
          'password': '',
          'keep': 0,
          'token': ''
        });
  }

  Future _switchTab(SwitchLoginTabEvent event, emit) async {
    logger.d('---------------${event.index}');
    if (event.index == state.index) {
      return;
    }
    if (event.index == 1) {
      await _qrCode(emit);
    }
    emit(state.copyWith(index: event.index));
  }

  void _closeTimer() {
    _timer?.cancel();
    _timer = null;
  }

  @override
  Future<void> close() {
    _closeTimer();
    return super.close();
  }
}
