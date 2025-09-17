import 'package:flutter/material.dart';
import 'package:shaqadef/constants/colors.dart';
import 'package:shaqadef/constants/size.dart';
import 'package:shaqadef/screens/bodies/Store_Policy_Body.dart';
import 'package:shaqadef/widget/custom/customTextfield/custom_text.dart';

class StorePolicy extends StatelessWidget {
  const StorePolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
 appBar: PreferredSize(preferredSize: Size.fromHeight(hScreen), child: Padding(
        padding: EdgeInsets.symmetric(vertical: hScreen*0.02,horizontal: wScreen*0.02),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(text: "سياسة المنصة", color: appTextColorPrimary, size: fSize*1.1,),
           IconButton(
                icon: const Icon(Icons.arrow_forward, color: appTextColorPrimary), 
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
          ],
       ) 
      )),
body: const StorePolicyBody(),
    );
  }
}