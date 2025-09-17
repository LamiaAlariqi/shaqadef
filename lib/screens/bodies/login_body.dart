import 'package:flutter/material.dart';
import 'package:shaqadef/constants/colors.dart';
import 'package:shaqadef/constants/rouTes.dart';
import 'package:shaqadef/constants/size.dart';
import 'package:shaqadef/widget/custom/customButton/custom_material_button.dart';
import 'package:shaqadef/widget/custom/customTextfield/custom_text.dart';
import 'package:shaqadef/widget/custom/customTextfield/custom_to_login_verfiction.dart';
import 'package:shaqadef/widget/usedwidget/signIn_google.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
        children: [
          SizedBox(
            height: hScreen * .15,
          ),
          Center(
            child: CustomText(
              text: "تسجيل الدخول",
              color: appTextColorPrimary,
              size: fSize * 1.3,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: hScreen * .04,
          ),
          Container(
            margin: EdgeInsets.only(
              right: wScreen * 0.04,
              left: wScreen * 0.04,
              bottom: hScreen * 0.02,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: EdgeInsets.all(hScreen * 0.02),
              child: Column(
                children: [
                    customtologinverfiction(
                    hintText: "أسم المستخدم | البريد الالكتروني",
                    suffixIcon: Icons.person_outline,
                    obscureText: false,
                    keyboardType: TextInputType.emailAddress,
                    enabledBorderColor: appTextColorPrimary,
                    focusedBorderColor: PrimaryColor,
                    controller: emailController,
                    width: 0,
                    showBorder: false,
                    fsize: fSize * 0.8,
                    onSaved: (value) {
                      print("البريد الإلكتروني: $value");
                    },
                  ),
                  SizedBox(height: hScreen * 0.01),
                  Divider(
                    height: hScreen * 0.01,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                  customtologinverfiction(
                    fsize: fSize * 0.8,
                    showBorder: false,
                    hintText: "كلمة المرور",
                    suffixIcon: Icons.lock_outline,
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    enabledBorderColor: appTextColorPrimary,
                    focusedBorderColor: PrimaryColor,
                    controller: passwordController,
                    width: 0,
                    onSaved: (value) {
                      print("كلمة المرور: $value");
                    },
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: hScreen * .025,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: wScreen*0.04),
            child: CustomMaterialButton(
              title: 'تسجيل دخول',
              vertical: hScreen * 0.01,
              buttonColor: PrimaryColor,
              textColor: appWhite,
              borderWidth: 0.5,
              borderColor: PrimaryColor,
              height: hScreen * 0.07,
              width: wScreen * 0.5,
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  Navigator.pushReplacementNamed(context, Routes.mainScreen);
                }
              },
              textsize: fSize * 0.8,
            ),
          ),
          SizedBox(
            height: hScreen * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                text: "هل نسيت كلمة المرور؟",
                color: appTextColorPrimary,
                size: fSize * 0.9,
              ),
              TextButton(
                child: CustomText(
                  text: "استعادة كلمة المرور",
                  color: PrimaryColor,
                  size: fSize * 0.9,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed(Routes.forgetPasswordScreen);
                },
              ),
            ],
          ),
          SizedBox(
            height: hScreen * .025,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 1,
                width: wScreen * .18,
                color: appTextColorPrimary.withOpacity(0.5),
              ),
              const SizedBox(
                width: 3,
              ),
              CustomText(
                text: "او التسجيل من خلال",
                color: appTextColorPrimary,
                size: fSize * 0.8,
              ),
              const SizedBox(
                width: 3,
              ),
              Container(
                height: 1,
                width: wScreen * .18,
                color: appTextColorPrimary.withOpacity(0.5),
              ),
            ],
          ),
          SizedBox(
            height: hScreen * .03,
          ),
         Padding(
           padding: EdgeInsets.symmetric(horizontal: wScreen*0.04),
           child: GoogleSignInButton(onPressed:(){},
            height: hScreen * 0.07,
             width: wScreen * 0.9,
             fontSize: fSize * 0.8,),
         ),
         SizedBox(height: hScreen * 0.1),

          Padding(
            padding: EdgeInsets.only(bottom: hScreen * 0.04),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "ليس لديك حساب؟",
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        color: appTextColorPrimary.withOpacity(0.8),
                        fontSize: fontSize(size: 15),
                      ),
                ),
                TextButton(
                  child: CustomText(
                    text: "انشاء حساب",
                    color: PrimaryColor,
                    size: fSize * 0.9,
                    fontWeight: FontWeight.bold,
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed(Routes.registerScreen);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}