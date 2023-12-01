import 'package:flutter_bili/pages/home/home_page.dart';
import 'package:flutter_bili/pages/main/main_page.dart';
import 'package:flutter_bili/pages/person/person_page.dart';
import 'package:flutter_bili/pages/video_details/video_details_page.dart';
import 'package:go_router/go_router.dart';

abstract class AppPages {
  static const mainViewPager = [HomePage(), PersonPage()];

  static const mainPage = '/';
  static const videoDetailsPage = '/video_details';

  static final routes = GoRouter(routes: [
    GoRoute(
      path: mainPage,
      builder: (context, state) => const MainPage(),
    ),
    GoRoute(
      path: videoDetailsPage,
      builder: (context, state) {
        final extra = state.extra as Map<String, String?>;
        return VideoDetails(
          bvid: extra['bvid'],
        );
      },
    ),
  ]);
}
