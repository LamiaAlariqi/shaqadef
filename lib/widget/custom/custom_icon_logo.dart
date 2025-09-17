import 'package:flutter/material.dart';

class CustomIconLogo extends StatelessWidget {
  final String backgroundImage;
  final Color backgroundColor;
  final double radius;

  const CustomIconLogo({
    super.key,
    required this.backgroundImage,
    required this.radius,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius * 2,
      height: radius * 2,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor,
      ),
      child: ClipOval(
        child: Image.asset(
          backgroundImage,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
