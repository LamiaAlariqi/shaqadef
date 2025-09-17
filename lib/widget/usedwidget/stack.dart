import 'package:flutter/material.dart';
import 'package:shaqadef/constants/colors.dart';
import 'package:shaqadef/constants/font.dart';
import 'package:shaqadef/constants/size.dart';

class StackOrder extends StatelessWidget {
  const StackOrder({super.key, required this.image,this.fontsize ,required this.text,this.padding ,this.onTap,this.height,this.width,this.child,this.edge});

  final String image;
  final String text;
  final Function() ? onTap;
  final double? height;
  final double? width;
  final double ?fontsize;
  final EdgeInsets? padding;
  final Widget? child;
  final double? edge;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(edge??20), 
            child: Image.asset(
              image,
              fit: BoxFit.cover,
              width:width?? wScreen * 0.4,
              height:height?? hScreen * 0.08,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(edge??20),
               color: PrimaryColor.withOpacity(0.6),
            ),
           
             width:width?? wScreen * 0.4,
              height:height?? hScreen * 0.08,
          ),
          Padding(
              padding:padding??EdgeInsets.symmetric(horizontal: wScreen * 0.08, vertical: hScreen * 0.03),
            child: Column(
              children: [
                Text(
                  text,
                  style: TextStyle(fontSize:fontsize??fSize * 0.8, color: appWhite, fontFamily: Fonts.kfont1),
                ),
                  if (child != null) child!,
              ],
            ),
          ),
         
        ],
      ),
    );
  }
}