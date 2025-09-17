import 'package:flutter/material.dart';
import 'package:shaqadef/constants/colors.dart';
import 'package:shaqadef/constants/font.dart';
import 'package:shaqadef/constants/size.dart';
import 'package:shaqadef/widget/custom/customButton/custom_material_button.dart';
import 'package:shaqadef/widget/custom/customTextfield/custom_text.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.product,
    required this.names,
    required this.prices,
  });

  final String product;
  final String names;
  final double prices;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(wScreen * .02),
        boxShadow: [
          BoxShadow(
            blurRadius: 3,
            color: PrimaryColor.withOpacity(.2),
            spreadRadius: 0,
            offset: const Offset(2, 2),
          ),
        ],
      ),
      child: Card(
        child: Stack(
          children: [
            SizedBox(
              height: hScreen * 0.23, 
              width: double.infinity,
              child: Image.asset(
                product,
                fit: BoxFit.contain,
              ),
            ),
            Positioned(
              bottom: 0, // تحديد القيمة الرأسية هنا
              left: 0,
              right: 0,
              child: SizedBox(
                height: hScreen * .07,
                width: double.infinity,
                      child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal: wScreen*0.02,vertical: hScreen*0.012),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomMaterialButton(
                              title: "شراء", 
                              textsize: fSize*0.65,
                              vertical: 0, 
                              buttonColor: PrimaryColor,
                               textColor: Colors.white,
                                borderWidth: 0, 
                                borderColor: PrimaryColor,
                                 height: hScreen*0.035,
                                  width: wScreen*0.14,
                                  onPressed: (){},
                                  ),
                            Column(
                              children: [
                              CustomText(text: names, color:PrimaryColor, size: fSize * 0.7,fontFamily: Fonts.kfont1,),
                              
                              CustomText(text: "$prices \$", color: PrimaryColor, size: fSize * 0.7,fontFamily: Fonts.kfont1,),
                              ],
                            ),
                          ],
                        ),
                      ),
                      // مسافة بين النص والعناصر الأخرى
                    ),
                  ),
          ]
              ),
            ),
        
        );
  }
}
