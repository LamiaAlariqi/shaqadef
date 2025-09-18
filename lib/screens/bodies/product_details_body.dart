import 'package:flutter/material.dart';
import 'package:shaqadef/constants/colors.dart';
import 'package:shaqadef/constants/images.dart';
import 'package:shaqadef/constants/rouTes.dart';
import 'package:shaqadef/constants/size.dart';
import 'package:shaqadef/widget/custom/customButton/custom_material_button.dart';
import 'package:shaqadef/widget/custom/customTextfield/custom_text.dart';
import 'package:shaqadef/widget/usedwidget/carosalSlider.dart';
import 'package:shaqadef/widget/usedwidget/continer_for_form.dart';

class ProductDetailsBody extends StatelessWidget {
  const ProductDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(
        children: [
          // صور المنتج
          CarosalSlider(
            images: [Images.ref1, Images.ref2],
            texts: ["", ""],
            onPressed: () {},
            buttonheigt: 10,
            buttonwidth: 10,
            fit: BoxFit.fitHeight,
            color: Colors.white,
          ),

          // الاسم + السعر + الماركة كأيقونة
          Padding(
            padding: EdgeInsets.all(wScreen * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CustomText(
                      text: "ثلاجة جينرال سوبر ابيض",
                      color: appTextColorPrimary,
                      size: fSize * 0.9,
                    ),
                    const SizedBox(width: 8),
                    const Icon(Icons.ac_unit, color: Colors.grey), // رمز الماركة
                  ],
                ),
                SizedBox(height: hScreen * 0.005),
                CustomText(
                  text: "1000 ر.س",
                  color: PrimaryColor,
                  size: fSize * 1.1,
                ),
              ],
            ),
          ),

          // الوصف + التفاصيل
          ContinerForForm(
            margin: EdgeInsets.symmetric(horizontal: wScreen * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  title: CustomText(
                      text: "الوصف",
                      color: appTextColorPrimary,
                      size: fSize * 1),
                  subtitle: CustomText(
                      text:
                          "ثلاجة جنرال موديل GR-18: تتميز بتصميمها الأنيق وسعتها الكبيرة (18 قدم مكعب) مع نظام تبريد فعال وأرفف قابلة للتعديل.",
                      color: appTextColorPrimary,
                      size: fSize * 0.8),
                ),
                const Divider(),
                ListTile(
                  title: CustomText(
                      text: "الموقع",
                      color: appTextColorPrimary,
                      size: fSize * 1),
                  subtitle: CustomText(
                      text: "الثورة",
                      color: appTextColorPrimary,
                      size: fSize * 0.8),
                ),
                const Divider(),
                ListTile(
                  title: CustomText(
                      text: "ملاحظات",
                      color: appTextColorPrimary,
                      size: fSize * 1),
                  subtitle: CustomText(
                      text: "السعر لا يشمل التوصيل",
                      color: appTextColorPrimary,
                      size: fSize * 0.8),
                ),
              ],
            ),
          ),

          SizedBox(height: hScreen * 0.03),

          Padding(
  padding: EdgeInsets.symmetric(horizontal: wScreen * 0.08),
  child: CustomMaterialButton(
    title: "إضافة إلى السلة",
    vertical: hScreen * 0.015,
    buttonColor: Colors.orange,
    textColor: appWhite,
    borderWidth: 0,
    borderColor: Colors.orange,
    height: hScreen * 0.065,
    width: double.infinity,
    onPressed: () {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("تمت إضافة المنتج إلى السلة"),
          backgroundColor: Colors.orange,
        ),
      );
    },
    textsize: fSize * 1,
    // ✨ إضافة أيقونة قبل النص
    prefixIcon: const Icon(
      Icons.shopping_cart_outlined,
      color: Colors.white,
    ),
  ),
),


          SizedBox(height: hScreen * 0.015),

          // زر شراء الآن
          Padding(
            padding: EdgeInsets.symmetric(horizontal: wScreen * 0.08),
            child: CustomMaterialButton(
              title: "شراء الآن",
              vertical: hScreen * 0.015,
              buttonColor: PrimaryColor,
              textColor: appWhite,
              borderWidth: 0,
              borderColor: PrimaryColor,
              height: hScreen * 0.065,
              width: double.infinity,
              onPressed: () {
                Navigator.of(context).pushNamed(Routes.purchaseScreen);
              },
              textsize: fSize * 1,
            ),
          ),

          SizedBox(height: hScreen * 0.04),
        ],
      );
  }
}
