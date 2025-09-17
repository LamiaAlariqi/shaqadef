import 'package:flutter/material.dart';
import 'package:shaqadef/constants/colors.dart';
import 'package:shaqadef/constants/size.dart';

class CustomIconButton extends StatelessWidget {
  final void Function()? onTap;
  final double height;
  final double width;
  final Color backgroundColor;
  final IconData icon;
  final double iconSize;
  final Color? iconColor; 

  const CustomIconButton({
    super.key,
    this.onTap,
    required this.height,
    required this.width,
    required this.backgroundColor,
    required this.icon,
    required this.iconSize,
    this.iconColor, 
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(wScreen * .02),
        ),
        child: Icon(
          icon,
          size: iconSize,
          color: iconColor ?? iconColorPrimary, 
        ),
      ),
    );
  }
}