import 'package:flutter/material.dart';
import 'package:shaqadef/constants/colors.dart';
import 'package:shaqadef/constants/rouTes.dart';
import 'package:shaqadef/constants/size.dart';
import 'package:shaqadef/widget/custom/customTextfield/custom_textfield_to_login.dart';
import 'package:shaqadef/widget/custom/customButton/custom_material_button.dart';
import 'package:shaqadef/widget/custom/customTextfield/custom_text.dart';

class ForgetPasswordBody extends StatelessWidget {
  const ForgetPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Padding(
        padding: EdgeInsets.all(wScreen*0.04),
        child: CustomForgetPassword(),
      ),
    );
  }
}

class CustomForgetPassword extends StatefulWidget {
  const CustomForgetPassword({super.key});

  @override
  State<CustomForgetPassword> createState() => _CustomForgetPasswordState();
}

class _CustomForgetPasswordState extends State<CustomForgetPassword> {
  final TextEditingController emailController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          SizedBox(height: hScreen * .05),
         CustomText(text: "نسيت كلمة المرور",color: appTextColorPrimary,size: fSize*1.2,fontWeight:FontWeight.bold,),
          SizedBox(height: hScreen * .04),
          CustomText(
            text:  "لا تقلق! سوف نرسل إليك كلمة المرور الجديدة\nمن خلال البريد الإلكتروني الخاص بك",
            color: Colors.black.withOpacity(0.6),
            size: fSize*0.9,
          ),
          SizedBox(height: hScreen * .04),
          CustomTextFormFieldToLogin(
            hintText: "البريد الإلكتروني",
            suffixIcon: Icons.email_outlined,
            keyboardType: TextInputType.emailAddress,
            obscureText: false,
            controller: emailController,
            enabledBorderColor: Colors.grey,
            focusedBorderColor: Colors.blue,
            width: 0.5,
            fsize: fSize*0.8,
          ),
          SizedBox(height: hScreen * .025),
          CustomMaterialButton(
            title: 'ارسال',
            vertical: hScreen * 0.01,
            buttonColor: PrimaryColor,
            textColor: Colors.white,
            borderWidth: 0.5,
            borderColor: Colors.blue,
            height: hScreen * 0.07,
            width: wScreen * 0.9,
            onPressed: () {
             Navigator.of(context).pushNamed(Routes.newpasswordScreen);
            },
            textsize: fSize * 0.8,
          ),
        ],
      ),
    );
  }
}