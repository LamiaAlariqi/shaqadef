import 'package:flutter/material.dart';
import 'package:shaqadef/constants/colors.dart';
import 'package:shaqadef/constants/font.dart';
import 'package:shaqadef/constants/images.dart';
import 'package:shaqadef/widget/custom/customTextfield/custom_text.dart';


import '../../constants/size.dart';

class AboutBody extends StatelessWidget {
  const AboutBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: wScreen * 0.04),
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: wScreen * 0.05, // أو قيمة أقل
              vertical: hScreen * 0.05, // أو قيمة أقل
            ),
            child: Image.asset(
              Images.kWhoWe,
              height: hScreen * 0.3, // استخدم نسبة أكبر
              width: wScreen * 0.8, // استخدم نسبة أكبر
              fit: BoxFit.cover, // أو BoxFit.contain
            ),
          ),
          CustomText(
            text: 'منصة شقادف -الوسيط لبيع المنتجات المستعملة',
            color: PrimaryColor,
            size: fSize * 1.1,
            fontWeight: FontWeight.bold,
            fontFamily: Fonts.kfont1,

          ),
          SizedBox(height: hScreen * 0.02),
          CustomText(
            text:
                '"شقادف" هي منصة وسيطة إلكترونية في مجال التجارة الإلكترونية. ويهدف إلى توفير تجربة تسوق سلسة وآمنة للمستخدمين سواء كانوا بائعين أو مشترين.\n'
                'منصة شقادف - الوسيط لبيع المنتجات المستعملة.\n'
                'نحن نؤمن بقدرة التكنولوجيا على إحداث تغيير إيجابي في حياة الناس. ولذلك عملنا على بناء منصة متكاملة تجمع بين تنوع المنتجات والخدمات مع سهولة الوصول إليها واستخدامها.\n\n'
                'يقدم شقادف مجموعة واسعة من المنتجات التي يقدمها البائعون في مختلف الفئات، بما في ذلك الإلكترونيات، والأزياء، والمنزل والمطبخ، والرياضة والترفيه، والعديد من الفئات الأخرى، مما يتيح لك الاستثمار وتوفير المال والجهد.\n'
                'كما نقدم أيضًا تجربة آمنة وشفافة لجميع الأطراف، ودعمًا فنيًا على مدار الساعة.\n\n'
                'فريق شقادف هو نخبة من المهنيين المتخصصين في مجالات التكنولوجيا والتسويق والخدمات اللوجستية. نحن ملتزمون بتوفير تجربة تسوق ممتازة ذات قيمة مضافة لكل من البائعين والمشترين.\n\n'
                'انضم إلينا واكتشف عالم شقادف المربح الذي تقدمه منصة شقادف.\n \n \n ',
            color: appTextColorPrimary,
            size: fSize * 1,
            fontFamily: Fonts.kfont1,
          ),
             Padding(
               padding:  EdgeInsets.symmetric(horizontal: wScreen*0.03),
               child: CustomText(
                           text: 'رؤيتنا ',
                           color: kyello,
                           size: fSize * 1.3,
                           fontWeight: FontWeight.bold,
                           fontFamily: Fonts.kfont1,
                         ),
             ),
             SizedBox(height: hScreen * 0.02),
             CustomText(text: 'المنصة الإلكترونية الرائدة والأشمل في الجمهورية اليمنية لبيع وشراء الأدوات المستعملة والجديدة، ملتزمة بالدقة والالتزام بالمواعيد، معتمدة على أدق المعايير الأمنية في التبادل الإلكتروني بما يحقق ثقة ورضا العملاء.\n ',
             color: appTextColorPrimary, 
              size: fSize*1.1,
              fontFamily: Fonts.kfont1,),
          SizedBox(height: hScreen * 0.02),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: wScreen * 0.05, // أو قيمة أقل
              vertical: hScreen * 0.05, // أو قيمة أقل
            ),
            child: Image.asset(
              Images.keye,
              height: hScreen * 0.3, // استخدم نسبة أكبر
              width: wScreen * 0.8, // استخدم نسبة أكبر
              fit: BoxFit.cover, // أو BoxFit.contain
            ),
          ),

        ],
      ),
    );
  }
}
