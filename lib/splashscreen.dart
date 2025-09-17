import 'package:flutter/material.dart';
import 'package:shaqadef/constants/colors.dart';
import 'package:shaqadef/constants/font.dart';
import 'package:shaqadef/constants/images.dart';
import 'package:shaqadef/constants/rouTes.dart';
import 'package:shaqadef/constants/size.dart';
import 'package:shaqadef/widget/custom/customButton/custom_material_button.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  _SplashBodyState createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool _showMainContent = false;
  bool _showButtons = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _showMainContent = true;
      });
      _controller.forward();

      Future.delayed(const Duration(seconds: 1), () {
        setState(() {
          _showButtons = true;
        });
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  SlideTransition transition(
      Offset position, double begin, double end, Widget child) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: Offset(0, begin),
        end: Offset(0, end),
      ).animate(CurvedAnimation(
        parent: _controller,
        curve: Curves.easeIn,
      )),
      child: child,
    );
  }
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
          color: Colors.white.withOpacity(0.50), // 🔹 opacity صفر
          ),
          // الأيقونة والنص
          if (_showMainContent)
            transition(
              const Offset(0, -1),
              -1.0,
              0.0,
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(Images.iconwithoutback,
                      height: hScreen*0.20, width: wScreen*0.45, fit: BoxFit.cover, ),
                   Text("معنا لشقادفـك قيـمة ",
                  style: TextStyle(fontFamily: Fonts.kfont1,
                  color: PrimaryColor,
                  fontSize: fSize*1.1),),
                ],
              ),
            ),
          // النص وزري التسجيل
          if (_showButtons) 
            transition(
              const Offset(0.25, 1),
              1.0,
              0.25,
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Text(
                    'مرحباً بك في منصة شقادف',
                    style: TextStyle(fontSize: fSize*1.3,fontFamily: Fonts.kfont1,color: PrimaryColor),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                   CustomMaterialButton(
                    title: "تسجيل الدخول",
                   vertical: hScreen*0.01, 
                   buttonColor: PrimaryColor,
                    textColor: appTextButtonColorPrimary ,
                     borderWidth: 1, 
                     borderColor: PrimaryColor
                     ,onPressed:(){
                    Navigator.pushReplacementNamed(context,Routes.login);
                     },
                     height: hScreen*0.07,
                     width: wScreen*0.8,
                     ),
                     
                  const SizedBox(height: 10),
                 CustomMaterialButton(
                    title: "انشاء حساب",
                   vertical: hScreen*0.01, 
                   buttonColor: PrimaryColor,
                    textColor: appTextButtonColorPrimary ,
                     borderWidth: 1, 
                     borderColor: PrimaryColor
                     ,onPressed:(){
                      // Navigator.pushReplacementNamed(context, Routes.CreateAccount);
                       Navigator.pushReplacementNamed(context, Routes.registerScreen);
                     },
                      height: hScreen*0.07,
                     width: wScreen*0.8,
                     ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}