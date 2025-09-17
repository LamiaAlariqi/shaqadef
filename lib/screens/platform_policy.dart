import 'package:flutter/material.dart';
import 'package:shaqadef/constants/colors.dart';
import 'package:shaqadef/constants/size.dart';
import 'package:shaqadef/screens/bodies/platform_policy_body.dart';
import 'package:shaqadef/widget/custom/customTextfield/custom_text.dart';

class PlatformPolicy extends StatelessWidget {
  const PlatformPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(hScreen), child: Padding(
        padding: EdgeInsets.symmetric(vertical: hScreen*0.02,horizontal: wScreen*0.02),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(text: "سياسة المتجر", color: appTextColorPrimary, size: fSize*1.1,),
           IconButton(
                icon: const Icon(Icons.arrow_forward, color: appTextColorPrimary), 
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
          ],
       ) 
      )),
      body: const PlatformPolicyBody(),
    );
  }
}