import 'package:flutter/material.dart';
import 'package:shaqadef/constants/colors.dart';
import 'package:shaqadef/constants/rouTes.dart';
import 'package:shaqadef/constants/size.dart';
import 'package:shaqadef/widget/custom/customTextfield/custom_text.dart';
import 'package:shaqadef/widget/custom/customTextfield/custom_textfield_to_login.dart';
import 'package:shaqadef/widget/custom/customButton/custom_material_button.dart';

class OtpBody extends StatelessWidget {
  const OtpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: wScreen*0.02,vertical: hScreen*0.02),
        child: CustomOtp(),
      ),
    );
  }
}

class CustomOtp extends StatefulWidget {
  const CustomOtp({super.key});

  @override
  State<CustomOtp> createState() => _CustomOtpState();
}

class _CustomOtpState extends State<CustomOtp> {
  final TextEditingController otpController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    otpController.dispose();
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
          text: "كود المصادقة",
           color: appTextColorPrimary,
           size: fSize*1.2,
           fontWeight: FontWeight.bold,
          ),
          SizedBox(height: hScreen * .04),
          CustomText(
          text:"قم بادخال كود otp الذي ارسل لك عبر رقم الهاتف",
           color: Colors.black.withOpacity(0.5),
           size: fSize*0.9,
          ),
          SizedBox(height: hScreen * .04),
          Container(
            margin: EdgeInsets.symmetric(horizontal: wScreen*0.02),
            padding: EdgeInsets.symmetric(vertical: hScreen*0.015),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: CustomTextFormFieldToLogin(
              hintText: "كود OTP",
              suffixIcon: Icons.lock_outline,
              keyboardType: TextInputType.number,
              obscureText: false,
              controller: otpController,
              enabledBorderColor: Colors.grey,
              focusedBorderColor: Colors.blue,
              showBorder: false,
              fsize: fSize*0.8,
            ),
          ),
          SizedBox(height: hScreen * .025),
          CustomMaterialButton(
            title: "حفظ",
            vertical: hScreen * 0.01,
            buttonColor: PrimaryColor,
            textColor: Colors.white,
            borderWidth: 0.5,
            borderColor: Colors.blue,
            height: hScreen * 0.07,
            width: wScreen * 0.9,
            onPressed: () {
             Navigator.pushReplacementNamed(context, Routes.personalinfo);
            },
            textsize: fSize * 0.8,
          ),
          SizedBox(height: hScreen * .03),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
               text:  "اذا لم يصلك الكود قم بإعادة طلبه من ",
                color: appTextColorPrimary,
                size: fSize*0.9,
              ),
              GestureDetector(
                onTap: () {
                  // تنفيذ عملية إعادة طلب الكود
                },
                child: CustomText(
                 text:  "هنا",
                  color: PrimaryColor,
                  size: fSize*0.9,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}