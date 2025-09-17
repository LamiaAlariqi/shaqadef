import 'package:flutter/material.dart';
import 'package:shaqadef/constants/colors.dart';
import 'package:shaqadef/constants/size.dart';
import 'package:shaqadef/screens/bodies/payment_body.dart';
import 'package:shaqadef/widget/custom/customTextfield/custom_text.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(hScreen), child: Padding(
        padding: EdgeInsets.only(top: hScreen*0.05,right: wScreen*0.02,bottom: hScreen*0.04),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(text: "طرق الدفع", color: appTextColorPrimary, size: fSize*1.1,fontWeight:FontWeight.bold),
           IconButton(
                icon: const Icon(Icons.arrow_forward, color: appTextColorPrimary), 
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
          ],
        ),
      )),
      body: const PaymentBody(),
    );
  }
}