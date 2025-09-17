import 'package:flutter/material.dart';
import 'package:shaqadef/constants/colors.dart';
import 'package:shaqadef/constants/size.dart';

class CustomVisibility extends StatelessWidget {
  const CustomVisibility({super.key, required this.child, required this.visible});
  final bool visible;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visible,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: wScreen * 0.05, vertical: hScreen * 0.02),
        child: _modifyChild(child), // تعديل child
      ),
    );
  }

  Widget _modifyChild(Widget child) {
    if (child is Text) {
  
      return Text(
        child.data ?? '',
        style: const TextStyle(color: appTextColorPrimary), 
      );
    } else if (child is Column) {
     
      return Column(
        children: child.children.map((widget) {
          if (widget is Text) {
            return Text(
              widget.data ?? '',
              style: const TextStyle(color: PrimaryColor),
            );
          }
          return widget;
        }).toList(),
      );
    }
    return child; 
  }
}