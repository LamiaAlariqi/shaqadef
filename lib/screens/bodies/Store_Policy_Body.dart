import 'package:flutter/material.dart';
import 'package:shaqadef/constants/colors.dart';
import 'package:shaqadef/constants/font.dart';
import 'package:shaqadef/constants/images.dart';
import 'package:shaqadef/constants/size.dart';
import 'package:shaqadef/widget/custom/customTextfield/custom_text.dart';
import 'package:shaqadef/widget/custom/custom_policy_listTile.dart';
import 'package:shaqadef/widget/custom/custom_visibilty.dart';

class StorePolicyBody extends StatefulWidget {
  const StorePolicyBody({super.key});

  @override
  State<StorePolicyBody> createState() => _StorePolicyBodyState();
}

class _StorePolicyBodyState extends State<StorePolicyBody> {
  final List<bool> _visibilityStates = List.filled(9, false); // عدد العناصر
  void _toggleVisibility(int index) {
    setState(() {
      _visibilityStates[index] =
          !_visibilityStates[index]; // تغيير الحالة للعنصر المحدد
    });}
  @override
  Widget build(BuildContext context) {
    return  ListView(
      padding: EdgeInsets.symmetric(horizontal: wScreen * 0.02),
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: wScreen * 0.15, vertical: hScreen * 0.07),
          child: Image.asset(Images.kwithLogo, height: hScreen * 0.2),
        ),
        CustomText(
            text: 'الشروط والأحكام الخاصة بالخدمات التي توفرها المنصة',
            color: PrimaryColor,
            size: fSize * 1.14,
            fontFamily: Fonts.kfont1),
        SizedBox(height: hScreen * 0.02),
        CustomText(
            text: 'نأمل أن تجيب هذه الأسئلة على جميع استفساراتك ',
            color: kyello,
            size: fSize * 1,
            fontFamily: Fonts.kfont1),
        SizedBox(height: hScreen * 0.02),

        CustomPolicyListTile(
          isVisible: _visibilityStates[0],
          color: PrimaryColor,
          size: fSize * 1,
          text: 'هل استطيع استرداد اموالي في حال لم تكتمل الصفقة البيعية ؟',
          onPressed: () => _toggleVisibility(0),
        ),
       CustomVisibility( visible: _visibilityStates[0], 
       child: const Text('نعم، في حال لم تكتمل الصفقة البيعية، فإنه يحق للمشتري استرداد أمواله. وفقًا لسياسة الموقع، للمشتري الحق في التحقق من المنتج عند الاستلام، وإذا لم يرغب به، يتم إرجاعه للبائع كما كان',maxLines: 4,),),

        //__________________________________________________________________
        CustomPolicyListTile(
          isVisible: _visibilityStates[1],
          color: PrimaryColor,
          size: fSize * 1,
          text: 'في حال قمت بشراء منتج ولم يتوافق المنتج مع المواصفات, ماذا عليا ان افعل ؟',
          onPressed: () => _toggleVisibility(1),
        ),
      CustomVisibility(visible: _visibilityStates[1], child:const Text('وفقًا للسياسة رقم 3، للمشتري الحق في التحقق من المنتج عند الاستلام، وإذا لم يرغب به لعدم توافقه مع المواصفات، يتم إرجاعه للبائع كما كان. ويتحمل البائع رسوم الشحن في هذه الحالة وفقًا للسياسة رقم 2.',maxLines: 4,)),
        //_______________________________________________________________________________________________________
        CustomPolicyListTile(
          isVisible: _visibilityStates[2],
          color: PrimaryColor,
          size: fSize * 1,
          text: 'ماذا يحدث بعد ان اضيف منتجي للمنصة ؟',
          onPressed: () => _toggleVisibility(2),
        ),
       CustomVisibility(visible: _visibilityStates[2], child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                    '- وفقًا للسياسة رقم 2، يتم عرض المنتج للبيع على المنصة لمدة 3 أشهر. إذا لم يتم بيعه خلال هذه الفترة، يتم حذف المنتج من المنصة.'),
                SizedBox(height: hScreen *0.01),
                const Text('- إذا أراد البائع إعلان المنتج مرة أخرى بعد 3 أشهر، سيتم فرض رسوم إعلان بقيمة 1,000 ريال يمني.'),
              ],
            )),

        //__________________________________________________________________________
        CustomPolicyListTile(
          isVisible: _visibilityStates[3],
          color: PrimaryColor,
          size: fSize * 1,
          text: 'ماهي سياسة التسجيل والاستخدام في الموقع ؟',
          onPressed: () => _toggleVisibility(3),
        ),
       CustomVisibility(visible: _visibilityStates[3], child: const Text(
              '-وفقًا  للسياسة رقم 1 ، تسجيل الحساب على الموقع يعني موافقة العميل على الشروط والأحكام. كما أنه لا يحق للمستخدم التعدي على هذه الشروط، وفي حال المخالفة، يحق للموقع حظر المستخدم والإبلاغ عنه.',
              maxLines: 4,
            )),

        //_______________________________________________________________________
        CustomPolicyListTile(
          isVisible: _visibilityStates[4],
          color: PrimaryColor,
          size: fSize * 1,
          text: '- ماهي سياسة بيع المنتجات على الموقع ؟',
          onPressed: () => _toggleVisibility(4),
        ),
      CustomVisibility(visible: _visibilityStates[4], child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('- وفقًا  للسياسة رقم 2 ، على البائع وصف المنتج بدقة وصدق، وإذا كان الوصف مخالفًا لحالة المنتج، يتحمل البائع رسوم الشحن.'),
                SizedBox(height: 8),
                Text(' يحتفظ الموقع بنسبة 10% من قيمة المبيعات. '),
                 SizedBox(height: 8),
                Text(' للمستخدمين البائعين الذين يبيعون عدة مرات، يحق لهم الحصول على كود خصم.'),
              ],
            )),

        //________________________________________________________________________________
        CustomPolicyListTile(
          isVisible: _visibilityStates[5],
          color: PrimaryColor,
          size: fSize * 1,
          text: ' ماهي سياسات شراء المنتجات على الموقع ؟',
          onPressed: () => _toggleVisibility(5),
        ),
      CustomVisibility(visible: _visibilityStates[5], child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '- وفقًا  للسياسة رقم 3 ، للمشتري الحق في التحقق من المنتج عند الاستلام، وإذا لم يرغب به، يتم إرجاعه للبائع كما كان. ',
                  
                ),
                const Text(
                  '- لا يحق للمشتري إرجاع المنتج بعد الموافقة عليه عند الاستلام.',
                ),
                SizedBox(height: hScreen *0.02), // مساحة بين العناصر
                const Text('- في حال تراجع المشتري عن الشراء، سيتحمل رسوم الشحن التي ستخصم من المبلغ الذي أرسله.'),
                SizedBox(height: hScreen *0.01),
                const Text(
                    '- للمستخدمين المشترين الذين يشترون عدة مرات، يحق لهم الحصول على كود خصم. '),
              ],
            )),
  //_______________________________________________________________________________________________________________
       CustomPolicyListTile(
          isVisible: _visibilityStates[6],
          color: PrimaryColor,
          size: fSize * 1,
          text: ' ماهي سياسات الشحن والدفع على الموقع ؟',
          onPressed: () => _toggleVisibility(6),
        ),
      CustomVisibility(visible: _visibilityStates[6], child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '- وفقًا للسياسة رقم 4، المبلغ المدفوع للمنتج سيتم إيداعه في حساب الموقع حساب "شقادف" ، ولن يتم إرساله للبائع إلا بعد تأكد المشتري من المنتج عند الاستلام. ',
                  
                ),
                const Text(
                  '- سعر المنتج لا يشمل تكاليف الشحن. ',
                ),
                SizedBox(height: hScreen *0.02), // مساحة بين العناصر
                const Text('- المنتجات التي في نفس مدينة المشتري سيتم توصيلها خلال 3 ايام، بينما المنتجات في مدن أخرى سيتم توصيلها خلال 7أيام.'),
                SizedBox(height: hScreen *0.01),
                const Text(
                    '- الدفع يتم عبر خدمة "حاسب" في بنك الكريمي '),
              ],
            )),
//___________________________________________________________________________________________________
 CustomPolicyListTile(
          isVisible: _visibilityStates[7],
          color: PrimaryColor,
          size: fSize * 1,
          text:'كبائع متى احصل على قيمة الموقع ؟',
          onPressed: () => _toggleVisibility(7),
        ),
       CustomVisibility(visible: _visibilityStates[7], child: const Text(
              '-عند اكتمال الصفقه البيعية وتسليم المشتري للمنتج في الوقت ذاته يحدد المشتري الموافقه ام لا، اذا لم يوافق يتم ارجاع المنتج للبائع، واذا وافق يتم ارسال المبلغ للبائع، علما بانه سياسه الموقع تمنع ارجاع المنتج الا اذا كان يخالف المواصفات المذكوره.',
              maxLines: 5,
            )),
//________________________________________________________________________
CustomPolicyListTile(
          isVisible: _visibilityStates[8],
          color: PrimaryColor,
          size: fSize * 1,
          text:'سياسات واحكام موقع شقادف',
          onPressed: () => _toggleVisibility(8),
        ),
        CustomVisibility(
  visible: _visibilityStates[8],
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        '1. التسجيل والاستخدام:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const Text('- تسجيل الحساب على الموقع يعني موافقة العميل على الشروط والأحكام.'),
      const Text('- لا يحق للمستخدم التعدي على هذه الشروط، وفي حال المخالفة، يحق للموقع حظر المستخدم والإبلاغ عنه.'),
      SizedBox(height: hScreen * 0.02), // مساحة بين القسم الأول والأقسام التالية
      const Text(
        '2. بيع المنتجات:',
        style: TextStyle(fontWeight: FontWeight.bold,),
      ),
      const Text('- على البائع وصف المنتج بدقة وصدق، وإذا كان الوصف مخالفًا لحالة المنتج، يتحمل البائع رسوم الشحن.'),
      const Text('- يحتفظ الموقع بنسبة 10% من قيمة المبيعات.'),
      const Text('- للمستخدمين البائعين الذين يبيعون عدة مرات، يحق لهم الحصول على كود خصم.'),
      const Text('- يتم عرض المنتج لمدة 3 أشهر، وإذا لم يتم بيعه، يتم حذفه. إذا أراد البائع إعلان المنتج مرة أخرى بعد 3 أشهر، سيتم فرض رسوم إعلان بقيمة 1,000 ريال يمني.'),
      SizedBox(height: hScreen * 0.01), // مساحة بين الأقسام
      const Text(
        '3. شراء المنتجات:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const Text('- للمشتري الحق في التحقق من المنتج عند الاستلام، وإذا لم يرغب به، يتم إرجاعه للبائع كما كان.'),
      const Text('- لا يحق للمشتري إرجاع المنتج بعد الموافقة عليه عند الاستلام.'),
      const Text('- في حال تراجع المشتري عن الشراء، سيتحمل رسوم الشحن التي ستخصم من المبلغ الذي أرسله.'),
      SizedBox(height: hScreen * 0.01), // مساحة بين الأقسام
      const Text(
        '4. الشحن والدفع:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      const Text('- المبلغ المدفوع للمنتج سيتم إيداعه في حساب الموقع، ولن يتم إرساله للبائع إلا بعد تأكد المشتري من المنتج عند الاستلام.'),
      const Text('- سعر المنتج لا يشمل تكاليف الشحن.'),
      const Text('- المنتجات التي في نفس مدينة المشتري سيتم توصيلها خلال 3 أيام، بينما المنتجات في مدن أخرى سيتم توصيلها خلال أسبوع.'),
      const Text('- خدمات الشحن معقودة مع شركات موثوقة لضمان وصول المنتجات بأمان وسرعة.'),
      const Text('- الدفع يتم عبر خدمة "حاسب" في بنك الكريمي، مع إرفاق سند الإيداع عند طلب المنتج.'),
      const Text('- يجب على المستخدم التأكد من صحة جميع البيانات المقدمة.'),
    ],
  ),
),
//____________________________________________________________________________________________

      ],
    );
  }
}