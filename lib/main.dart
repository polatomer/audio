import 'package:audio/feature/view/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:audio/product/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Audio',
      home: const ProfileView(),
      theme: audioTheme,
    );
  }
}
