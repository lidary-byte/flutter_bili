import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bili/pages/home/bloc/home_bloc.dart';
import 'package:flutter_bili/pages/home/bloc/home_event.dart';
import 'package:flutter_bili/pages/home/bloc/home_state.dart';
import 'package:flutter_bili/shared_components/responsive_builder.dart';
import 'package:flutter_bili/widget/status_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LiveWidget extends StatelessWidget {
  const LiveWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
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
                              imageUrl: state.recommendList?[index].cover ?? '',
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
                                  '${state.recommendList?[index].title}',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2),
                            ),
                          ],
                        ),
                        onTap: () {
                          // context.go(AppPages.videoDetailsPage,
                          //     extra: {'bvid': state.recommendList?[index].bvid});
                        }),
                    itemCount: state.recommendList?.length ?? 0),
              ),
              status: state.netState,
              onRetry: () {
                context.read<HomeBloc>().add(SwitchTabEvent(0));
              },
            ));
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
}
