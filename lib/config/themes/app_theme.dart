import 'package:flutter/material.dart';

/// 色值来源于Bilibili的desktop版本
class AppTheme {
  static ThemeData get basic => ThemeData().copyWith(
        primaryColor: const Color(0XFFFB7299),
        canvasColor: Colors.white,
        colorScheme: const ColorScheme.light().copyWith(
          primary: const Color(0XFFFB7299),
        ),
        scaffoldBackgroundColor: Colors.white,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData()
            .copyWith(backgroundColor: const Color(0xFFF6F7F8)),
        textTheme: const TextTheme().copyWith(
          displayLarge: const TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
          displayMedium: const TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
          displaySmall: const TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
          headlineLarge: const TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
          headlineMedium: const TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
          headlineSmall: const TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
          titleLarge: const TextStyle(
              fontSize: 60, fontWeight: FontWeight.bold, color: Colors.black),
          titleMedium: const TextStyle(
              fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
          titleSmall: const TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
          bodyLarge: const TextStyle(
              fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
          // 默认样式
          bodyMedium: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
          bodySmall: const TextStyle(
              fontSize: 2, fontWeight: FontWeight.bold, color: Colors.black),
          labelLarge: const TextStyle(
              fontSize: 1, fontWeight: FontWeight.bold, color: Colors.black),
          labelMedium: const TextStyle(
              fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
          labelSmall: const TextStyle(
              fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      );
}
