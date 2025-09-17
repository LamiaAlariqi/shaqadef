import 'package:flutter/material.dart';
import 'package:shaqadef/constants/size.dart';
import 'package:shaqadef/widget/custom/customButton/custom_icon_button.dart';


class CustomIconButtonWithText extends StatelessWidget {
  const CustomIconButtonWithText({
    super.key,
    required this.icon,
    required this.text,
    this.onTap,
  });
  final IconData icon;
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomIconButton(
          height: hScreen * .07,
          width: wScreen * .15,
          backgroundColor: Theme.of(context).primaryColorDark,
          icon: icon ,
          iconSize: hScreen * .045,
          onTap: onTap,
        ),
        SizedBox(
          height: hScreen * .01,
        ),
        Text(
          text,
          style:Theme.of(context).textTheme.bodySmall
        )
      ],
    );
  }
}


