import 'package:flutter/material.dart';
import 'package:shaqadef/constants/colors.dart';
import 'package:shaqadef/constants/size.dart';
import 'package:shaqadef/screens/bodies/purchase_body.dart';
import 'package:shaqadef/widget/custom/customTextfield/custom_text.dart';

class PurchaseScreen extends StatelessWidget {
  const PurchaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
         
          children: [
            CustomText(text: "طلب الشراء", color: appTextColorPrimary, size: fSize*1.1),
            IconButton(
              iconSize: fSize*1.2,
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.close),
              color: PrimaryColor,
            ),
          ],
        ),
    ),
    body: const PurchaseBody(),
    ) ;
  }
}