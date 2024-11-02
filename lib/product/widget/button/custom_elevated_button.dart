import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    this.buttonColor,
    required this.title,
    required this.borderRadius,
    this.elevation,
  });
  final Color? buttonColor;
  final Text title;
  final double borderRadius;
  final double? elevation;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        elevation: elevation,
        backgroundColor: buttonColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius)),
      ),
      child: title,
    );
  }
}
