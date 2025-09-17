import 'package:flutter/material.dart';
import 'package:shaqadef/constants/colors.dart';
import 'package:shaqadef/constants/images.dart';
import 'package:shaqadef/constants/size.dart';
import 'package:shaqadef/widget/custom/customTextfield/custom_text.dart';

class PaymentBody extends StatelessWidget {
  const PaymentBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Container(
            width: hScreen * 0.25,
            height: hScreen * 0.20,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              
            ),
            child: Padding(
              padding: EdgeInsets.all(hScreen * 0.015),
              child: ClipOval(
                child: Image.asset(
                  Images.shaqadef, 
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ),
        Center(
          child: CustomText(
            text: "حاليا يتوفر الدفع من خلال بنك الكريمي ",
            color: appTextColorPrimary,
            size: fSize * 0.8,
            fontWeight: FontWeight.bold,
          ),
        ),

        SizedBox(height: hScreen * 0.04),

        // 🔹 صورة البنك
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            Images.bankurimi,
            fit: BoxFit.fill,
            width: wScreen * 0.9,
            height: hScreen * 0.3,
          ),
        ),

        SizedBox(height: hScreen * 0.03),
      ],
    );
  }
}
