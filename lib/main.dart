import 'dart:ui';

import 'config/routes/app_pages.dart';
import 'config/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'AI Chat Blend',
      theme: AppTheme.basic,
      initialRoute: AppPages.mainPage,
      getPages: AppPages.routes,
      scrollBehavior: CustomScrollBehaviour(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CustomScrollBehaviour extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
