import 'package:flutter/material.dart';
import 'package:shaqadef/constants/colors.dart';
import 'package:shaqadef/constants/font.dart';
import 'package:shaqadef/widget/custom/customTextfield/custom_text.dart';

class CustomPolicyListTile extends StatelessWidget {
 CustomPolicyListTile({super.key,required this.isVisible,required this.color,required this.size,required this.text,required this.onPressed});
bool  isVisible;
double size;
Color color;
String text;
void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return  ListTile(
title: CustomText(text:text ,color:color ,size:size, fontFamily: Fonts.kfont1),
            trailing: IconButton(
              icon: Icon(
               isVisible ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                color:PrimaryColor,
              ),
              onPressed: onPressed,
            ),

    );
  }
}

