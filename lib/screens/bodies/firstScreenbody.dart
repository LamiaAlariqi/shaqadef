import 'package:flutter/material.dart';
import 'package:shaqadef/constants/colors.dart';
import 'package:shaqadef/constants/font.dart';
import 'package:shaqadef/constants/images.dart';
import 'package:shaqadef/constants/rouTes.dart';
import 'package:shaqadef/constants/size.dart';
import 'package:shaqadef/widget/custom/customButton/custom_material_button.dart';

class Firstscreenbody extends StatelessWidget {
  const Firstscreenbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Images.background),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: Colors.white.withOpacity(0.50),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Image.asset(
                    Images.iconwithoutback,
                    height: hScreen * 0.20,
                    width: wScreen * 0.45,
                    fit: BoxFit.cover,
                  ),
                  Text(
                    "معنا لشقادفـك قيـمة ",
                    style: TextStyle(
                      fontFamily: Fonts.kfont1,
                      color: PrimaryColor,
                      fontSize: fSize * 1.1,
                    ),
                  ),
                  SizedBox(height: hScreen*0.07),
                ],
              ),

              Text(
                'مرحباً بك في منصة شقادف',
                style: TextStyle(
                  fontSize: fSize * 1.3,
                  fontFamily: Fonts.kfont1,
                  color: PrimaryColor,
                ),
                textAlign: TextAlign.center,
              ),
            SizedBox(height: hScreen*0.02),

              // 🔹 زر تسجيل الدخول
              CustomMaterialButton(
                title: "تسجيل الدخول",
                vertical: hScreen * 0.01,
                buttonColor: PrimaryColor,
                textColor: appTextButtonColorPrimary,
                borderWidth: 1,
                borderColor: PrimaryColor,
                onPressed: () {
                  Navigator.pushReplacementNamed(context, Routes.login);
                },
                height: hScreen * 0.07,
                width: wScreen * 0.8,
              ),
              SizedBox(height:hScreen*0.01 ),

            
              CustomMaterialButton(
                title: "إنشاء حساب",
                vertical: hScreen * 0.01,
                buttonColor: PrimaryColor,
                textColor: appTextButtonColorPrimary,
                borderWidth: 1,
                borderColor: PrimaryColor,
                onPressed: () {
                  Navigator.pushReplacementNamed(context, Routes.registerScreen);
                },
                height: hScreen * 0.07,
                width: wScreen * 0.8,
              ),
              SizedBox(height:hScreen*0.01),

              CustomMaterialButton(
                title: "التصفح كزائـــر",
                vertical: hScreen * 0.01,
                buttonColor: Colors.white,
                textColor:  PrimaryColor,
                borderWidth: 1,
                borderColor: PrimaryColor,
                onPressed: () {
                  Navigator.pushReplacementNamed(context, Routes.mainScreen);
                },
                height: hScreen * 0.07,
                width: wScreen * 0.8,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
