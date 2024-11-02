import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.filled,
    required this.borderRadius,
    required this.hintText,
    this.imageString,
  });
  final bool? filled;
  final double borderRadius;
  final String hintText;
  final String? imageString;

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
      contentPadding:
          context.padding.verticalLow + context.padding.horizontalLow,
      filled: filled,
      prefixIcon: SizedBox(child: Image.asset(imageString ?? '')),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius))),
      hintText: hintText,
    ));
  }
}
