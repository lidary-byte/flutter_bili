import 'package:flutter/material.dart';
import 'package:flutter_bili/pages/person/bloc/person_bloc.dart';
import 'package:flutter_bili/pages/person/bloc/person_event.dart';
import 'package:flutter_bili/pages/person/bloc/person_state.dart';
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
    return BlocBuilder<PersonBloc, PersonState>(
        builder: (context, state) => state.userInfoEntity != null
            ? Column(
                children: [
                  Card(
                    elevation: 0,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://images.unsplash.com/photo-1517841905240-472988babdf9?ixlib=rb-1.2.1'),
                          ),
                          Column(
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: Text('点击登录'),
                              ),
                              Text('B币: -    硬币: -')
                            ],
                          ),
                          Text('动态: -'),
                          Text('关注: -'),
                          Text('粉丝: -'),
                        ],
                      ),
                    ),
                  )
                ],
              )
            : Column(
                children: [
                  TabBar(
                    tabs: const [Tab(text: '账号密码登录'), Tab(text: '扫码登录')],
                    controller: _tabController,
                    onTap: (index) {
                      context
                          .read<PersonBloc>()
                          .add(SwitchLoginTabEvent(index: index));
                    },
                  ),
                  Expanded(child: _loginContent(context))
                ],
              ));
  }

  Widget _loginContent(BuildContext context) {
    return BlocBuilder<PersonBloc, PersonState>(builder: (context, state) {
      if (state.index == 0) {
        return Column(
          children: [
            Input(hintText: '请输入账号'),
            Input(
              hintText: '请输入密码',
            ),
            const SizedBox(
              height: 12,
            ),
            const Button(text: '因接口相关原因,账号密码登录方法暂仅支持Android/iOS端')
          ],
        );
      } else if (state.index == 1) {
        return state.qrCode?.isEmpty == true
            ? const CircularProgressIndicator()
            : _qrCodeWidget(state);
      } else {
        return const SizedBox();
      }
    });
  }

  Widget _qrCodeWidget(PersonState state) {
    return Center(
        child: SizedBox(
      width: 280,
      height: 280,
      child: Stack(
        children: [
          PrettyQrView.data(data: state.qrCode ?? ''),
          if (state.qrCodeStatus?.isNotEmpty == true)
            GestureDetector(
              child: Container(
                  alignment: Alignment.center,
                  color: const Color.fromARGB(200, 255, 255, 255),
                  child: Text(
                    state.qrCodeStatus ?? '',
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  )),
              onTap: () {
                context.read<PersonBloc>().add(RefreshQrCodeEvent());
              },
            )
        ],
      ),
    ));
  }
}
