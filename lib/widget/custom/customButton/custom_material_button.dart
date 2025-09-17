import 'package:flutter/material.dart';
import 'package:shaqadef/constants/size.dart';


class CustomMaterialButton extends StatelessWidget {
  final void Function()? onPressed;
  final String title;
  final double vertical;
  final double horizontal;
  final Color buttonColor;
  final Color textColor;
  final Color borderColor;
  final double borderWidth;
  final double height;
  final double width;
  final double? textsize;
  CustomMaterialButton({
    super.key,
    this.onPressed,
    required this.title,
    this.horizontal = 0,
    required this.vertical,
    required this.buttonColor,
    required this.textColor,
    required this.borderWidth,
    required this.borderColor,
    required this.height,
    required this.width,
    this.textsize
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(wScreen * .05),
        border: Border.all(
          color: borderColor,
          width: borderWidth,
        ),
      ),
      child: SizedBox(
        width: width,
        height: height,
        child: MaterialButton(
          color: buttonColor,
          onPressed: onPressed,
          padding: EdgeInsets.symmetric(
            vertical: vertical,
            horizontal: horizontal,
          ),
          elevation: hScreen * .005,
          shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(wScreen * .05),
            borderSide: BorderSide.none,
          ),
          child: Text(
            title,
            style: TextStyle(
              color: textColor,
              fontSize: textsize??fSize*1.1,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
