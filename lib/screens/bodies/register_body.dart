import 'package:flutter/material.dart';
import 'package:shaqadef/constants/colors.dart';
import 'package:shaqadef/constants/rouTes.dart';
import 'package:shaqadef/constants/size.dart';
import 'package:shaqadef/widget/custom/customTextfield/custom_textfield_to_login.dart';
import 'package:shaqadef/widget/custom/customButton/custom_material_button.dart';
import 'package:shaqadef/widget/custom/customTextfield/custom_text.dart';
import 'package:shaqadef/widget/usedwidget/signIn_google.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: CustomRegisterForm(),
      ),
    );
  }
}

class CustomRegisterForm extends StatefulWidget {
  const CustomRegisterForm({super.key});

  @override
  State<CustomRegisterForm> createState() => _CustomRegisterFormState();
}

class _CustomRegisterFormState extends State<CustomRegisterForm> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    usernameController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          SizedBox( height: hScreen * .1,),
          CustomText(
           text:  "إنشاء حساب",
           color: appTextColorPrimary,
            size: fSize*1.3,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(height: hScreen * .04),
          Container(
            padding: EdgeInsets.symmetric(horizontal:wScreen*0.02,vertical: hScreen*0.02),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                CustomTextFormFieldToLogin(
                  hintText: "البريد الإلكتروني",
                  suffixIcon: Icons.email_outlined,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                  controller: emailController,
                  enabledBorderColor: Colors.grey,
                  focusedBorderColor: Colors.blue,
                  showBorder: false,
                  fsize: fSize*0.8,
                ),
                CustomTextFormFieldToLogin(
                  fsize: fSize*0.8,
                  hintText: "اسم المستخدم",
                  suffixIcon: Icons.person_outline,
                  keyboardType: TextInputType.text,
                  obscureText: false,
                  controller: usernameController,
                  enabledBorderColor: Colors.grey,
                  focusedBorderColor: Colors.blue,
                  showBorder: false,
                ),
                CustomTextFormFieldToLogin(
                  fsize: fSize*0.8,
                  showBorder: false,
                  hintText: "كلمة المرور",
                  suffixIcon: Icons.lock_outline,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  controller: passwordController,
                  enabledBorderColor: Colors.grey,
                  focusedBorderColor: Colors.blue,
                ),
                CustomTextFormFieldToLogin(
                  fsize: fSize*0.8,
                  showBorder: false,
                  hintText: "تأكيد كلمة المرور",
                  suffixIcon: Icons.lock_outline,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  controller: confirmPasswordController,
                  enabledBorderColor: Colors.grey,
                  focusedBorderColor: Colors.blue,
                ),
              ],
            ),
          ),
          SizedBox(height: hScreen * .025),
          CustomMaterialButton(
            title: "تسجيل",
            vertical: hScreen * 0.01,
            buttonColor: PrimaryColor,
            textColor: Colors.white,
            borderWidth: 0.5,
            borderColor: Colors.blue,
            height: hScreen * 0.07,
            width: wScreen * 0.9,
            onPressed: () {
            Navigator.pushReplacementNamed(context, Routes.otpScreen);
            },
            textsize: fSize * 0.8,
          ),
          SizedBox(height: hScreen * .035),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 1,
                width: wScreen * .18,
                color: appTextColorPrimary.withOpacity(0.5),
              ),
              SizedBox(width: wScreen*0.02),
              CustomText(
                text: 
                "أو التسجيل من خلال",
                 color: Colors.grey,
                 size: fSize*0.75,
              ),
              SizedBox(width: wScreen*0.02),
              Container(
                height: 1,
                width: wScreen * .18,
                color: appTextColorPrimary.withOpacity(0.5),
              ),
            ],
          ),
          SizedBox(height: hScreen * .035),
        GoogleSignInButton(
  onPressed: () {
   
  },
  height: hScreen * 0.07,
  width: wScreen * 0.9,
  fontSize: fSize * 0.8,
),

          SizedBox(height: hScreen*0.1,),
            Center(
              child: RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.grey),
                children: <TextSpan>[
                  TextSpan(text: ' من خلال التسجيل، أنت توافق على سياسة'),
                  TextSpan(text: '\n'),
                  TextSpan(
                    text: '          الخصوصية ',
                    style: TextStyle(color: Colors.blue.shade800),
                    
                  ),
                  
                  TextSpan(
                    text: 'وشروط الخدمة.',
                    style: TextStyle(color: Colors.blue.shade800),
                  ),
                ],
              ),
                        ),
            ),
        ],
      ),
    );
  }
}