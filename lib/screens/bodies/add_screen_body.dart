import 'package:flutter/material.dart';
import 'package:shaqadef/constants/colors.dart';
import 'package:shaqadef/constants/font.dart';
import 'package:shaqadef/constants/rouTes.dart';
import 'package:shaqadef/constants/size.dart';
import 'package:shaqadef/widget/custom/customButton/custom_material_button.dart';
import 'package:shaqadef/widget/custom/customTextfield/custom_text.dart';

class AddScreenBody extends StatelessWidget {
  const AddScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: wScreen*0.18,vertical: hScreen*0.15),
      child: Column(
        children: [
          CustomText(text: "مع منصة شقادف يمكنك الان  اضافة\n  منتج  او انشاء اعلان بضفطة زر    " ,
          color: appTextColorPrimary,
          size: fSize*0.8,
          fontFamily: Fonts.kfont1,
          ),
          const SizedBox(height: 25),
          CustomMaterialButton(
                    title: "اضافة منتج",
                   vertical: hScreen*0.01, 
                   buttonColor: PrimaryColor,
                    textColor: appTextButtonColorPrimary ,
                     borderWidth: 1, 
                     borderColor: PrimaryColor
                     ,onPressed:(){
                      Navigator.of(context).pushNamed(Routes.addProductScreen);
                     },
                     height: hScreen*0.07,
                     width: wScreen*1,
                     ),
                     
                  const SizedBox(height: 10),
                 CustomMaterialButton(
                    title:"انشاء اعلان ",
                   vertical: hScreen*0.01, 
                   buttonColor: PrimaryColor,
                    textColor: appTextButtonColorPrimary ,
                     borderWidth: 1, 
                     borderColor: PrimaryColor
                     ,onPressed:(){
                      Navigator.of(context).pushNamed(Routes.addAdvertiseScreen);
                     },
                      height: hScreen*0.07,
                     width: wScreen*1,
                     ),
        ],
      ),
    );
  }
}