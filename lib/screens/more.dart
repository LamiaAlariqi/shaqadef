import 'package:flutter/material.dart';
import 'package:shaqadef/constants/size.dart';
import 'package:shaqadef/screens/bodies/more_body.dart';
import 'package:shaqadef/widget/usedwidget/app_bar_general.dart';

class Morescreen extends StatelessWidget {
  const Morescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: PreferredSize(preferredSize: Size.fromHeight(hScreen*0.1), child: const AppBarBody(text: "المزيد")),
    body: const MoreBody(),
    );
  }
}