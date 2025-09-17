import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
 CustomText({super.key,required this.text,required this.color,required this.size,this.fontWeight,this.fontFamily });
  final String text;
  final Color color;
  final double size;
  FontWeight? fontWeight;
  String? fontFamily;

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(fontWeight:fontWeight,color: color,fontSize: 
    size,fontFamily: fontFamily ,
    ),textAlign: TextAlign.right,
   
    );
  }
}