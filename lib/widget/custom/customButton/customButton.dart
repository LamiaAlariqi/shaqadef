import 'package:flutter/material.dart';
import 'package:shaqadef/constants/size.dart';

class CustomButton1 extends StatelessWidget {
  const CustomButton1({
    super.key,
    this.onTap,
    required this.text,
    required this.color,
  });
  final void Function()? onTap;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: wScreen * .04,
          vertical: hScreen * .005,
        ),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium,
            
          ),
        ),
      );
  }
}
