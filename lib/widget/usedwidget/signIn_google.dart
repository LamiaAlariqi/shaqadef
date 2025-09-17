import 'package:flutter/material.dart';
import 'package:shaqadef/constants/images.dart';
import 'package:shaqadef/constants/size.dart';

class GoogleSignInButton extends StatelessWidget {
  final VoidCallback onPressed;
  final double height;
  final double width;
  final double? fontSize;

  const GoogleSignInButton({
    super.key,
    required this.onPressed,
    required this.height,
    required this.width,
     required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: OutlinedButton.icon(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.white,
          side: const BorderSide(color: Colors.grey), 
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        icon: Image.asset(
       Images.google,
          height: hScreen*0.09,
          width: wScreen*0.07,
        ),
        label: Text(
          "التسجيل عبر Google",
          style: TextStyle(
            fontSize: fontSize ?? fSize*1.1 ,
            color: Colors.black87,
            fontWeight: FontWeight.w500,
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
