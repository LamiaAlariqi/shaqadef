import 'package:flutter/material.dart';
import 'package:shaqadef/constants/size.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType keyboardType;
  final String? hintText;
  final Color enabledBorderColor;
  final Color focusedBorderColor;
  final bool readOnly;
  final bool isNull; // لو true يعني الحقل غير مطلوب
  final String? validatorMessage; // رسالة مخصصة للخطأ
  final void Function()? onTap;

  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.keyboardType,
    this.hintText,
    required this.enabledBorderColor,
    required this.focusedBorderColor,
    this.readOnly = false,
    this.onTap,
    this.isNull = false,
    this.validatorMessage,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (isNull) {
          return null; // غير مطلوب
        } else {
          if (value == null || value.isEmpty) {
            return validatorMessage ?? "هذا الحقل مطلوب";
          }
          return null;
        }
      },
      onTap: onTap,
      readOnly: readOnly,
      maxLines: null,
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        fillColor: Colors.white,
        labelText: hintText,
        labelStyle: TextStyle(
          fontSize: fSize * 1,
        ),
        filled: true,
        hintStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: enabledBorderColor,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: focusedBorderColor,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: wScreen * 0.01,
          vertical: hScreen * 0.01,
        ),
      ),
    );
  }
}
