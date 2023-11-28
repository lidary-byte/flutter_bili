import 'package:flutter_bili/pages/main/main_binding.dart';
import 'package:flutter_bili/pages/main/main_page.dart';

import 'package:get/get.dart';

abstract class AppPages {
  static const mainPage = '/';

  static final routes = [
    GetPage(
      name: mainPage,
      page: () => const MainPage(),
      binding: MainBinding(),
    ),
  ];
}
