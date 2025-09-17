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
    return ListView(children: [
      Container(
          padding: EdgeInsets.only(left: wScreen * 0.02),
          child: CarosalSlider(
            images: [Images.ref1, Images.ref2],
            texts: ["", ""],
            onPressed: () {},
            buttonheigt: 10,
            buttonwidth: 10,
            fit: BoxFit.fitHeight,
            color: Colors.white,
          )),
      Center(
          child: Column(
        children: [
          CustomText(
            text: "ثلاجة جينرال سوبر ابيض ",
            color: appTextColorPrimary,
            size: fSize * 0.8,
          ),
          CustomText(
            text: "1000 ر.س",
            color: PrimaryColor,
            size: fSize * 0.8,
          ),
        ],
      )),
      SizedBox(
        height: hScreen * 0.02,
      ),
      ContinerForForm(
        margin: EdgeInsets.symmetric(horizontal: wScreen * 0.05),
        child:
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: CustomText(text:"الوصف",color:appTextColorPrimary ,size:fSize*1,),
            subtitle:CustomText(text:"ثلاجة جنرال موديل GR-18: تتميز بتصميمها الأنيق وسعتها الكبيرة التي تصل إلى 18 قدم مكعب، مما يوفر مساحة كافية لتخزين الطعام. تحتوي على نظام تبريد فعال يضمن توزيع متساوي للبرودة، بالإضافة إلى أرفف قابلة للتعديل وسلة للفواكه والخضروات للحفاظ على الطازجة لفترة أطول.",color:appTextColorPrimary ,size:fSize*0.8,),
          ),
           ListTile(
            title: CustomText(text:"الموقع",color:appTextColorPrimary ,size:fSize*1,),
            subtitle:CustomText(text:"الثورة",color:appTextColorPrimary ,size:fSize*0.8,),
           ),
            ListTile(
            title: CustomText(text:"ملاحظات",color:appTextColorPrimary ,size:fSize*1,),
            subtitle:CustomText(text:"السعر لا يشمل التوصيل",color:appTextColorPrimary ,size:fSize*0.8,),
          )
        ],
      ),),
      SizedBox(height: hScreen*0.02,),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: wScreen * 0.12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           CustomMaterialButton(title: "مشاركة", vertical: hScreen*0.01, buttonColor: PrimaryColor, textColor: appWhite, borderWidth: 1, borderColor: PrimaryColor, height: hScreen*0.05, width:wScreen*0.35,onPressed: (){},textsize: fSize*1,),
            CustomMaterialButton(title: "شراء", vertical: hScreen*0.01, buttonColor: PrimaryColor, textColor: appWhite, borderWidth: 1, borderColor: PrimaryColor, height: hScreen*0.05, width:wScreen*0.35,onPressed: (){
              Navigator.of(context).pushNamed(Routes.purchaseScreen);
            },textsize: fSize*1, )
          ],
        ),
      )
    ]);
  }
}
