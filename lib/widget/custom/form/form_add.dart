import 'package:flutter/material.dart';
import 'package:shaqadef/constants/colors.dart';
import 'package:shaqadef/constants/size.dart';
import 'package:shaqadef/widget/custom/customTextfield/custom_text.dart';
import 'package:shaqadef/widget/custom/form/form_text_feild.dart';

class AddForm extends StatefulWidget {
   AddForm({super.key,required this.titleText,required this.controller});
  final String titleText;
 TextEditingController controller;
  
  @override
  State<AddForm> createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
  @override
  GlobalKey kform = GlobalKey<FormState>();
  Widget build(BuildContext context) {
  widget.controller=TextEditingController();
    return  Form(
                key: kform,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                        text:widget.titleText,
                        color: appTextColorPrimary,
                        size: fSize * 0.9),
                    CustomTextFormField(
                      controller: widget.controller,
                      keyboardType: TextInputType.text,
                      enabledBorderColor: Colors.grey,
                      focusedBorderColor: PrimaryColor,
                    ),
                    SizedBox(
                      height: hScreen * 0.015,
                    ),
                  
                  ],
                ));
  }
}