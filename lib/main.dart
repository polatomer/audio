import 'package:audio/feature/view/prduct_detail_view.dart';
import 'package:flutter/material.dart';
import 'package:audio/product/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Audio',
      home: const ProductDetailView(),
      theme: audioTheme,
    );
  }
}
