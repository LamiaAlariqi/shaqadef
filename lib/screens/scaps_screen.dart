import 'package:flutter/material.dart';
import 'package:shaqadef/constants/size.dart';
import 'package:shaqadef/screens/bodies/scaps_body.dart';
import 'package:shaqadef/widget/usedwidget/app_bar_fortools.dart';

class ScrapsScreen extends StatelessWidget {
  const ScrapsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: PreferredSize(
        preferredSize: Size.fromHeight(hScreen * 0.18),
        child: AppBarFortools(headline: "الخرداوات", title:  "مجموعة واسعة من الخرداوات",left: wScreen*0.1,right: wScreen*0.28,)
       ),
     //  body:const ScapsBody()
    );
  }
}