import 'package:flutter/material.dart';
import 'package:shaqadef/constants/colors.dart';
import 'package:shaqadef/constants/rouTes.dart';
import 'package:shaqadef/constants/size.dart';
import 'package:shaqadef/widget/custom/customTextfield/custom_textfield_to_login.dart';
import 'package:shaqadef/widget/custom/customButton/custom_material_button.dart';
import 'package:shaqadef/widget/custom/customTextfield/custom_text.dart';

class NewPasswordBody extends StatelessWidget {
  const NewPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: CustomLoginForm(),
      ),
    );
  }
}

class CustomLoginForm extends StatefulWidget {
  const CustomLoginForm({super.key});

  @override
  State<CustomLoginForm> createState() => _CustomLoginFormState();
}

class _CustomLoginFormState extends State<CustomLoginForm> {
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          SizedBox(height: hScreen * .05),
          CustomText(
           text:"كلمة المرور الجديدة",
           color: appTextColorPrimary,
           size: fSize*1.2,
           fontWeight: FontWeight.bold,
          ),
          SizedBox(height: hScreen * .04),
          CustomText(
           text:  "مرحبا بك مجددا. قم بإدخال كلمة المرور الجديدة",
           color: Colors.black.withOpacity(0.4),
           size: fSize*1,
          ),
          SizedBox(height: hScreen * .04),
          Container(
            padding:  EdgeInsets.symmetric(horizontal: wScreen*0.02, vertical: hScreen*0.02),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                CustomTextFormFieldToLogin(
                  hintText: "كلمة المرور",
                  suffixIcon: Icons.lock_outline,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  controller: passwordController,
                  enabledBorderColor: Colors.grey,
                  focusedBorderColor: Colors.blue,
                  showBorder: false,
                  fsize: fSize*0.75,
                ),
                Divider(height: hScreen*0.01,color: Colors.grey.withOpacity(0.5),),
                CustomTextFormFieldToLogin(
                  fsize: fSize*0.75,
                   showBorder: false,
                  hintText: "كلمة المرور مرة أخرى",
                  suffixIcon: Icons.lock_outline,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  controller: TextEditingController(), 
                  enabledBorderColor: Colors.grey,
                  focusedBorderColor: Colors.blue,
                ),
              ],
            ),
          ),
          SizedBox(height: hScreen * .025),
          CustomMaterialButton(
            title: 'حفظ',
            vertical: hScreen * 0.01,
            buttonColor: Colors.blue,
            textColor: Colors.white,
            borderWidth: 0.5,
            borderColor: Colors.blue,
            height: hScreen * 0.07,
            width: wScreen * 0.9,
            onPressed: () {
            Navigator.popAndPushNamed(context,Routes.login);
            },
            textsize: fSize * 0.8,
          ),
        ],
      ),
    );
  }
}