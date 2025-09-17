import 'package:flutter/material.dart';
import 'package:shaqadef/constants/colors.dart';
import 'package:shaqadef/constants/font.dart';
import 'package:shaqadef/constants/images.dart';
import 'package:shaqadef/constants/size.dart';
import 'package:shaqadef/widget/custom/customTextfield/custom_text.dart';
import 'package:shaqadef/widget/custom/custom_policy_listTile.dart';
import 'package:shaqadef/widget/custom/custom_visibilty.dart';

class PlatformPolicyBody extends StatefulWidget {
  const PlatformPolicyBody({super.key});

  @override
  State<PlatformPolicyBody> createState() => _PlatformPolicyBodyState();
}

class _PlatformPolicyBodyState extends State<PlatformPolicyBody> {
 final List<bool> _visibilityStates = List.filled(6, false); // عدد العناصر

  void _toggleVisibility(int index) {
    setState(() {
      _visibilityStates[index] =
          !_visibilityStates[index]; // تغيير الحالة للعنصر المحدد
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: wScreen * 0.02),
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: wScreen * 0.15, vertical: hScreen * 0.07),
          child: Image.asset(Images.kwithLogo, height: hScreen * 0.2),
        ),
        CustomText(
            text: 'ماذا بشأن خصوصية معلوماتك؟',
            color: PrimaryColor,
            size: fSize * 1.3,
            fontWeight: FontWeight.bold ,fontFamily: Fonts.kfont1,),
        SizedBox(height: hScreen * 0.02),
        CustomText(
            text: 'نأمل أن تجيب هذه الأسئلة على جميع استفساراتك ',
            color: kyello,
            size: fSize * 1.1,
            fontWeight: FontWeight.bold,fontFamily: Fonts.kfont1),
        SizedBox(height: hScreen * 0.02),

        // العناصر
        CustomPolicyListTile(
          isVisible: _visibilityStates[0],
          color: PrimaryColor,
          size: fSize * 1,
          text: 'نطاق المعلومات الشخصية التي تم جمعها',
          onPressed: () => _toggleVisibility(0),
        ),
       CustomVisibility( visible: _visibilityStates[0], 
       child: const Text('البيانات التي يقدمها المستخدم عند التسجيل أو استخدام الخدمات (الاسم كما بالهويه، العنوان، رقم الهاتف، عنوان بريد إلكتروني، رقم الحساب البنكي "ان وجد" ).',maxLines: 3,),),

        //__________________________________________________________________
        CustomPolicyListTile(
          isVisible: _visibilityStates[1],
          color: PrimaryColor,
          size: fSize * 1,
          text: 'الأغراض من جمع هذه المعلومات وكيفية استعمالها؟',
          onPressed: () => _toggleVisibility(1),
        ),
      CustomVisibility(visible: _visibilityStates[1], child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('- توفير الخدمات والميزات على الموقع.'),
                SizedBox(height: hScreen *0.01),
                const Text('- تحسين تجربة المستخدم وتخصيص المحتوى.'),
                SizedBox(height: hScreen *0.01),
                const Text('- إجراء التحليلات والأبحاث لتطوير الموقع والخدمات.'),
                SizedBox(height:hScreen *0.01),
                const Text('- تنفيذ عمليات التسويق والإعلانات المستهدفة.'),
                SizedBox(height:hScreen *0.01),
                const Text('- الأطراف التي قد تستخدم هذه المعلومات (الشركة نفسها).'),
              ],
            )),

        //_______________________________________________________________________________________________________
        CustomPolicyListTile(
          isVisible: _visibilityStates[2],
          color: PrimaryColor,
          size: fSize * 1,
          text: 'إجراء حماية خصوصية وأمن البيانات',
          onPressed: () => _toggleVisibility(2),
        ),
       CustomVisibility(visible: _visibilityStates[2], child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                    '- استخدام تقنيات التشفير والحماية الأمنية المناسبة لحماية البيانات.'),
                SizedBox(height: hScreen *0.01),
                const Text('- تطبيق إجراءات الوصول والتحكم في البيانات الشخصية.'),
                SizedBox(height: hScreen *0.01),
                const Text(
                    '- الالتزام بمتطلبات الأمن والخصوصية وفقًا للوائح والقوانين المعمول بها.'),
              ],
            )),

        //__________________________________________________________________________
        CustomPolicyListTile(
          isVisible: _visibilityStates[3],
          color: PrimaryColor,
          size: fSize * 1,
          text: 'حالة مشاركة أو الإفصاح عن المعلومات:',
          onPressed: () => _toggleVisibility(3),
        ),
       CustomVisibility(visible: _visibilityStates[3], child: const Text(
              'الإفصاح عن المعلومات بناءً على طلب من الجهات الحكومية أو القضائية.',
              maxLines: 2,
            )),

        //_______________________________________________________________________
        CustomPolicyListTile(
          isVisible: _visibilityStates[4],
          color: PrimaryColor,
          size: fSize * 1,
          text: 'حقوق المستخدمين بخصوص بياناتهم الشخصية',
          onPressed: () => _toggleVisibility(4),
        ),
      CustomVisibility(visible: _visibilityStates[4], child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('- الوصول إلى البيانات الشخصية والحصول على نسخة منها.'),
                SizedBox(height: 8),
                Text('- تعديل أو حذف البيانات الشخصية.'),
              ],
            )),

        //________________________________________________________________________________
        CustomPolicyListTile(
          isVisible: _visibilityStates[5],
          color: PrimaryColor,
          size: fSize * 1,
          text: 'طرق التواصل مع المسؤولين عن سياسة الخصوصية:',
          onPressed: () => _toggleVisibility(5),
        ),
      CustomVisibility(visible: _visibilityStates[5], child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'يمكن التواصل مع مسؤول الخصوصية على البريد الإلكتروني:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const Text(
                  'support@shaqadef.com',
                  style: const TextStyle(color: Colors.blue),
                ),
                SizedBox(height: hScreen *0.02), // مساحة بين العناصر
                const Text('- تقديم استفسارات أو شكاوى بخصوص سياسة الخصوصية.'),
                SizedBox(height: hScreen *0.01),
                const Text(
                    'لا تتردد في التواصل معنا إذا كان لديك أي أسئلة أو مخاوف بخصوص سياسة الخصوصية هذه.'),
              ],
            ))
      ],
    );
  }
}
