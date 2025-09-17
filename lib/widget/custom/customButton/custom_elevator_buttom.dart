import 'package:flutter/material.dart';
import 'package:shaqadef/constants/colors.dart';
import 'package:shaqadef/constants/size.dart';

import 'package:flutter/material.dart';

class CustomElevatorButtom extends StatelessWidget {
  const CustomElevatorButtom({
    super.key,
    required this.icon,
    required this.text,
    required this.onPressed,
    required this.width, // عرض الزر
    required this.height, // طول الزر
  });

  final IconData icon;
  final String text;
  final void Function() onPressed;
  final double width; 
  final double height; 

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ,
      height: height ,
      child: ElevatedButton.icon(
        
        onPressed: onPressed,
        icon: Icon(
          icon,
          size: hScreen*0.02,
          color:PrimaryColor, // حجم الأيقونة
        ),
        label: Text(
          text,
          style: TextStyle(fontSize: fSize*0.8,color: appTextColorPrimary), // حجم النص
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}