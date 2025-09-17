import 'package:flutter/material.dart';
import 'package:shaqadef/constants/colors.dart';
import 'package:shaqadef/constants/size.dart';
import 'package:shaqadef/widget/custom/customButton/custom_icon_button.dart';
import 'package:shaqadef/widget/custom/form/form_text_feild.dart';

class TextFormFaildWithIconButton extends StatelessWidget {
  final IconData icon;
  final void Function()? onTap;
  final void Function()? onTapText;
  final String hintText;
  final TextInputType keyboardType;
  final bool readOnly;
  final Color ?iconColor;
  const TextFormFaildWithIconButton({
    super.key,
    required this.productName,
    required this.icon,
    this.onTap,
    required this.hintText,
    required this.keyboardType,
    this.readOnly = false,
    this.onTapText,
    this.iconColor
  });

  final TextEditingController productName;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomIconButton(
          height: hScreen * .055,
          width: wScreen * .11,
          backgroundColor: Theme.of(context).primaryColorDark,
          icon: icon,
          iconColor: iconColor,
          iconSize: hScreen * .04,
          onTap: onTap,
        ),
        SizedBox(
          width: wScreen * .03,
        ),
        Flexible(
          child: CustomTextFormField(
            onTap: onTapText,
            controller: productName,
            keyboardType: keyboardType,
            hintText: hintText,
            enabledBorderColor:appTextColorPrimary,
            focusedBorderColor: Theme.of(context).primaryColor,
            readOnly: readOnly,
          ),
        ),
      ],
    );
  }
}
