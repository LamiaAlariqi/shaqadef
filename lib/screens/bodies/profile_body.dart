import 'package:flutter/material.dart';
import 'package:shaqadef/constants/colors.dart';
import 'package:shaqadef/constants/rouTes.dart';
import 'package:shaqadef/constants/size.dart';
import 'package:shaqadef/widget/custom/customTextfield/custom_text.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: wScreen * 0.15, right: wScreen * 0.1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipOval(
                  child: Container(
                width: wScreen * 0.25,
                height: hScreen * 0.14,
                color: Colors.grey[300],
                child: Icon(Icons.person, size: fSize * 2.5),
              )),
              Column(
                children: [
                  CustomText(
                    text: "محمد سعيد الدرة",
                    color: appTextColorPrimary,
                    size: fSize * 1.1,
                    fontWeight: FontWeight.bold,
                  ),
                  CustomText(
                    text: "mohammed@gmail.com",
                    color: appTextColorPrimary,
                    size: fSize * 0.9,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: hScreen*0.01),
                    width: wScreen*0.45,
                    height: hScreen*0.045,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey.withOpacity(0.7),
                          width: 1),
                      borderRadius:
                          BorderRadius.circular(30), 
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(Routes.savedPersonalData);
                      },
                      child: CustomText(
                        text: "تعديل الملف الشخصي",
                        color: appTextColorPrimary,
                        size: fSize * 0.8,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: wScreen*0.06,vertical: hScreen*0.04),
          height: hScreen*0.25,

        decoration: BoxDecoration(
          color: appWhite,
          borderRadius: BorderRadius.circular(30)
        ),
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.menu_rounded,color: Colors.grey.withOpacity(0.9),size: fSize*1.5),
              title: CustomText(text: "جميع الطلبات", color: appTextColorPrimary, size: fSize*1),
              trailing: IconButton(onPressed: (){}, icon: Icon(Icons.chevron_right_rounded),color: Colors.grey.withOpacity(0.9),),
            ),
            Divider(height: hScreen*0.01,endIndent: wScreen*0.09,indent: wScreen*0.09,color: appTextColorPrimary.withOpacity(0.2)),
             ListTile(
              leading: Icon(Icons.shopping_cart_outlined,color:  Colors.grey.withOpacity(0.9),size: fSize*1.5),
              title: CustomText(text: "جميع المنتجات", color: appTextColorPrimary, size: fSize*1),
              trailing: IconButton(onPressed: (){}, icon: Icon(Icons.chevron_right_rounded),color: Colors.grey.withOpacity(0.9),),
            ),
            Divider(height: hScreen*0.01,endIndent: wScreen*0.09,indent: wScreen*0.09,color: appTextColorPrimary.withOpacity(0.2)),
             ListTile(
              leading: Icon(Icons.announcement,color: Colors.grey.withOpacity(0.9),size: fSize*1.5),
              title: CustomText(text: "الاعلانات", color: appTextColorPrimary, size: fSize*1),
              trailing: IconButton(onPressed: (){}, icon: Icon(Icons.chevron_right_rounded),color: Colors.grey.withOpacity(0.9),),
            ),

          ],
        ),
        )
      ],
    );
  }
}
