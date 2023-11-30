import 'package:cached_network_image/cached_network_image.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bili/config/routes/app_pages.dart';
import 'package:flutter_bili/pages/main/main_bloc.dart';
import 'package:flutter_bili/pages/main/main_event.dart';
import 'package:flutter_bili/pages/main/main_state.dart';
import 'package:flutter_bili/pages/main/widget/bottom_navbar.dart';
import 'package:flutter_bili/pages/main/widget/slider_navbar.dart';
import 'package:flutter_bili/shared_components/responsive_builder.dart';
import 'package:flutter_bili/widget/search_widget.dart';
import 'package:flutter_bili/widget/status_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this)
      ..addListener(() {
        // context
        //     .read<MainBloc>()
        //     .add(SwitchTabEvent(_tabController?.index ?? 1));
      })
      ..animateTo(1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: (!ResponsiveBuilder.isMobile(context))
          ? null
          : BottomNavbar(onSelected: (position) {}),
      body: SafeArea(
          child: ResponsiveBuilder(mobileBuilder: (context, constraints) {
        return _buildPageContentWidget(context);
      }, tabletBuilder: (context, constraints) {
        return _buildPageContentWidget(context);
      }, desktopBuilder: (context, constraints) {
        return _buildPageContentWidget(context);
      })),
    );
  }

  Widget _buildContentWidget(BuildContext context) {
    return BlocProvider<MainBloc>(
        create: (context) => MainBloc(),
        child: BlocBuilder<MainBloc, MainState>(
            builder: (context, state) => StatusPage(
                  contentWidget: Expanded(
                    child: GridView.builder(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: _crossAxisCount(context), // 每行显示的列数
                          crossAxisSpacing: 16.0, // 列之间的间距
                          mainAxisSpacing: 8.0, // 行之间的间距
                        ),
                        itemBuilder: (context, index) => GestureDetector(
                            child: Column(
                              children: [
                                CachedNetworkImage(
                                  height: 140,
                                  width: double.infinity,
                                  imageUrl: state.recommend?[index].pic ?? '',
                                  imageBuilder: (context, imageProvider) =>
                                      Container(
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(6)),
                                      image: DecorationImage(
                                        image: imageProvider,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                      '${state.recommend?[index].title}',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2),
                                ),
                              ],
                            ),
                            onTap: () {
                              context.go(AppPages.videoDetailsPage, extra: {
                                'bvid': state.recommend?[index].bvid
                              });
                            }),
                        itemCount: state.recommend?.length ?? 0),
                  ),
                  status: state.netState,
                  onRetry: () {
                    context
                        .read<MainBloc>()
                        .add(SwitchTabEvent(_tabController?.index ?? 0));
                  },
                )));
  }

  int _crossAxisCount(BuildContext context) {
    if (ResponsiveBuilder.isMobile(context)) {
      return 2;
    }
    if (ResponsiveBuilder.isTablet(context)) {
      return 3;
    }
    if (ResponsiveBuilder.isDesktop(context)) {
      return 4;
    }
    return 1;
  }

  Widget _buildPageContentWidget(BuildContext context) {
    return ResponsiveBuilder.isMobile(context)
        ? Column(
            children: [_topWidget(), _buildContentWidget(context)],
          )
        : Row(
            children: [
              Container(
                width: 200,
                height: double.infinity,
                color:
                    Theme.of(context).bottomNavigationBarTheme.backgroundColor,
                child: SliderNavBar(onSelected: (position) {}),
              ),
              Expanded(
                  child: Column(
                children: [_topWidget(), _buildContentWidget(context)],
              ))
            ],
          );
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
