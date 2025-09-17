import 'package:flutter/material.dart';
import 'package:shaqadef/constants/size.dart';

class ContinerForForm extends StatelessWidget {
  const ContinerForForm({super.key,required this.child, this.margin});
  final Widget child;
  final EdgeInsetsGeometry? margin;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
            padding: EdgeInsets.symmetric(
                horizontal: wScreen * 0.04, vertical: hScreen * 0.03),
            decoration: BoxDecoration(
              color: Colors.white, 
              border: Border.all(color: Colors.grey.withOpacity(0.5), width: 1), 
              borderRadius: BorderRadius.circular(20),
            ),
            child:child
    );

  }
}