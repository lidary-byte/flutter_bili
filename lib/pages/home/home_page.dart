import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bili/pages/home/bloc/home_bloc.dart';
import 'package:flutter_bili/pages/home/bloc/home_event.dart';
import 'package:flutter_bili/pages/home/bloc/home_state.dart';
import 'package:flutter_bili/pages/home/widget/live_widget.dart';
import 'package:flutter_bili/pages/home/widget/video_widget.dart';
import 'package:flutter_bili/shared_components/responsive_builder.dart';
import 'package:flutter_bili/widget/search_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this)
      ..addListener(() {
        context
            .read<HomeBloc>()
            .add(SwitchTabEvent(_tabController?.index ?? 1));
      })
      ..animateTo(1);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [_topWidget(), _buildContentWidget(context)],
    );
  }

  Widget _buildContentWidget(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
      if (_tabController?.index == 0) {
        return const LiveWidget();
      } else if (_tabController?.index == 1) {
        return const VideoWidget();
      }
      return const SizedBox();
    });
  }

  Widget _topWidget() {
    return Row(
      children: [
        Flexible(
            flex: 3,
            child: TabBar(
              tabs: const [
                Tab(text: '直播'),
                Tab(text: '推荐'),
                Tab(text: '追番'),
                Tab(text: '影视'),
              ],
              controller: _tabController,
            )),
        Flexible(
          flex: 1,
          child: !ResponsiveBuilder.isMobile(context)
              ? Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
                  height: 60,
                  child: SearchWidget(
                    onSearch: (keyword) {},
                    hintText: "搜索视频",
                  ))
              : Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(EvaIcons.search),
                    label: const Text('Search'),
                  ),
                ),
        )
      ],
    );
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }
}
