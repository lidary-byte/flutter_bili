import 'package:flutter_bili/http/dio_client.dart';
import 'package:flutter_bili/http/entity/captcha_entity.dart';
import 'package:flutter_bili/http/entity/qrcode_generate_entity.dart';
import 'package:flutter_bili/http/entity/web_key_entity.dart';
import 'package:flutter_bili/http/net_state.dart';
import 'package:flutter_bili/pages/person/bloc/person_event.dart';
import 'package:flutter_bili/pages/person/bloc/person_state.dart';
import 'package:flutter_bili/utils/global_util.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PersonBloc extends Bloc<PersonEvent, PersonState> {
  PersonBloc() : super(const PersonState(index: 0)) {
    on<LoginEvent>((event, emit) => _login(event, emit));
    on<SwitchLoginTabEvent>((event, emit) => _switchTab(event, emit));
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
}
