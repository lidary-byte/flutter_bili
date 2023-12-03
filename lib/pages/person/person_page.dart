import 'package:flutter/material.dart';
import 'package:flutter_bili/pages/person/bloc/person_bloc.dart';
import 'package:flutter_bili/pages/person/bloc/person_event.dart';
import 'package:flutter_bili/pages/person/bloc/person_state.dart';
import 'package:flutter_bili/utils/global_util.dart';
import 'package:flutter_bili/widget/button.dart';
import 'package:flutter_bili/widget/input.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class PersonPage extends StatefulWidget {
  const PersonPage({super.key});

  @override
  State<PersonPage> createState() => _PersonPageState();
}

class _PersonPageState extends State<PersonPage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          tabs: const [Tab(text: '账号密码登录'), Tab(text: '扫码登录')],
          controller: _tabController,
          onTap: (index) {
            context.read<PersonBloc>().add(SwitchLoginTabEvent(index: index));
          },
        ),
        _loginContent(context)
      ],
    );
    // return Column(
    //   children: [
    //     Card(
    //       elevation: 0,
    //       child: Padding(
    //         padding: EdgeInsets.all(8.0),
    //         child: Row(
    //           children: [
    //             CircleAvatar(
    //               backgroundImage: NetworkImage(
    //                   'https://images.unsplash.com/photo-1517841905240-472988babdf9?ixlib=rb-1.2.1'),
    //             ),
    //             Column(
    //               children: [
    //                 TextButton(
    //                   onPressed: () {},
    //                   child: Text('点击登录'),
    //                 ),
    //                 Text('B币: -    硬币: -')
    //               ],
    //             ),
    //             Text('动态: -'),
    //             Text('关注: -'),
    //             Text('粉丝: -'),
    //           ],
    //         ),
    //       ),
    //     )
    //   ],
    // );
  }

  Widget _loginContent(BuildContext context) {
    // if (_tabController?.index == 1) {
    //   context.read<PersonBloc>().add(CreateQrCodeEvent());r
    return BlocBuilder<PersonBloc, PersonState>(builder: (context, state) {
      logger.d('---------------收到的之：${state.index}');
      if (state.index == 0) {
        return Column(
          children: [
            Input(hintText: '请输入账号'),
            Input(
              hintText: '请输入密码',
            ),
            SizedBox(
              height: 12,
            ),
            Button(text: '因接口相关原因,账号密码登录方法暂仅支持Android/iOS端')
          ],
        );
      } else if (state.index == 1) {
        return state.qrCode?.isEmpty == true
            ? const CircularProgressIndicator()
            : SizedBox(
                width: 300,
                height: 300,
                child: Card(
                    elevation: 0,
                    child: PrettyQrView.data(
                      data: state.qrCode ?? '',
                      // decoration: const PrettyQrDecoration(
                      //   image: PrettyQrDecorationImage(
                      //     image: AssetImage('images/flutter.png'),
                      //   ),
                      // ),
                    )),
              );
      } else {
        return SizedBox();
      }
    });
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }
}
