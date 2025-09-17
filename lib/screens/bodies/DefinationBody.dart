import 'package:flutter/material.dart';
import 'package:shaqadef/constants/colors.dart';
import 'package:shaqadef/constants/font.dart';
import 'package:shaqadef/constants/rouTes.dart';
import 'package:shaqadef/constants/size.dart';
import 'package:shaqadef/widget/custom/customButton/customButton.dart';
import 'package:shaqadef/widget/custom/customButton/custom_material_button.dart';

class DefinationBody extends StatefulWidget {
  const DefinationBody({super.key});

  @override
  State<DefinationBody> createState() => _DefinationBodyState();
}

class _DefinationBodyState extends State<DefinationBody> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  final List<Map<String, String>> _pages = [
    {
      "image": "assets/1.png",
      "title": "مرحبًا بك في شقادف – سوقك الإلكتروني الذكي!",
      "subtitle":
          "اكتشف، تواصل، وشارك منتجاتك المستعملة بسهولة وأمان. كل ما تحتاجه للبيع أو الشراء، بين يديك.",
    },
    {
      "image": "assets/3.png",
      "title": "دفع بأمان في شقادف – بوابتك لمدفوعات موثوقة!",
      "subtitle":
          "تسوق بثقة تامة. نوفر لك خيارات دفع متنوعة ومحمية بالكامل لضمان راحة بالك في كل معاملة. سوّق بأمان مع شقادف.",
    },
    {
      "image": "assets/2.png",
      "title": "بيع وشراء موثوق",
      "subtitle":
          "نحرص على حماية معلوماتك ومصداقية المنتجات، لتجربة بيع وشراء موثوقة وسلسة.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: _pages.length,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: hScreen*0.08,),
                    Center(
                      child: Image.asset(
                        _pages[index]["image"]!,
                        height: hScreen * 0.4,
                      ),
                    ),
                    SizedBox(height: hScreen * 0.02),
                    Text(
                      _pages[index]["title"]!,
                      style: TextStyle(
                        fontSize: fSize * 1.2,
                        fontWeight: FontWeight.bold,
                        fontFamily: Fonts.kfont1,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: hScreen * 0.02),
                    Text(
                      _pages[index]["subtitle"]!,
                      style: TextStyle(
                        fontFamily: Fonts.kfont1,
                        fontSize: fSize * 1,
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              _pages.length,
              (index) => AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: EdgeInsets.all(hScreen * 0.005),
                width: _currentPage == index ? 16 : 8,
                height: fSize * 0.5,
                decoration: BoxDecoration(
                  color: _currentPage == index ? PrimaryColor  : Colors.grey,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
          ),
          SizedBox(height: hScreen * 0.02),

          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: hScreen * 0.03,
              vertical: hScreen * 0.05,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      Routes.firstscreen,
                      (route) => false,
                    );
                  },
                  child: Text(
                    "تخطي",
                    style: TextStyle(
                      fontFamily: Fonts.kfont1,
                      fontSize: fSize * 1.2,
                      color: PrimaryColor 
                    ),
                  ),
                ),

                CustomMaterialButton(
                  title: _currentPage == _pages.length - 1 ? "ابدأ" : "التالي",
                  vertical: hScreen * 0.005,
                  buttonColor: PrimaryColor ,
                  textColor: Colors.white,
                  borderWidth: 0.5,
                  borderColor: PrimaryColor ,
                  height: hScreen * 0.06,
                  width: wScreen * 0.25,
                  textsize: fSize * 1.1,
                  onPressed: () {
                    if (_currentPage == _pages.length - 1) {
                      Navigator.pushReplacementNamed(
                        context,
                        Routes.firstscreen,
                      ); 
                    } else {
                      _controller.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
