import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bili/pages/home/bloc/home_bloc.dart';
import 'package:flutter_bili/pages/home/bloc/home_event.dart';
import 'package:flutter_bili/pages/home/widget/live_widget.dart';
import 'package:flutter_bili/pages/home/widget/video_widget.dart';
import 'package:flutter_bili/shared_components/responsive_builder.dart';
import 'package:flutter_bili/widget/input.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  PageController? _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 1);
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _topWidget(),
        Expanded(
            child: PageView.builder(
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) => _buildContentWidget(context, index),
          itemCount: _tabController?.length,
          onPageChanged: (index) => _tabController?.animateTo(index),
          controller: _pageController,
        ))
      ],
    );
  }

  Widget _buildContentWidget(BuildContext context, int index) {
    if (index == 0) {
      return const LiveWidget();
    } else if (index == 1) {
      return const VideoWidget();
    }
    return const SizedBox();
  }

  Widget _topWidget() {
    return Row(
      children: [
        TabBar(
          isScrollable: true,
          tabs: const [
            Tab(text: '直播'),
            Tab(text: '推荐'),
            Tab(text: '追番'),
            Tab(text: '影视'),
          ],
          controller: _tabController,
          onTap: (index) {
            context
                .read<HomeBloc>()
                .add(SwitchTabEvent(_tabController?.index ?? 1));
            _pageController?.jumpToPage(_tabController?.index ?? 1);
          },
        ),
        Expanded(
          child: !ResponsiveBuilder.isMobile(context)
              ? Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
                  height: 60,
                  child: Input(
                    onEditingComplete: (keyword) {},
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
    _pageController?.dispose();
    super.dispose();
  }
}
