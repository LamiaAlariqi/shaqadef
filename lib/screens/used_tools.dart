import 'package:flutter/material.dart';
import 'package:shaqadef/constants/size.dart';
import 'package:shaqadef/screens/bodies/used_tools_body.dart';
import 'package:shaqadef/widget/usedwidget/app_bar_fortools.dart';


class UsedTools extends StatelessWidget {
  const UsedTools({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(hScreen * 0.18),
        child: AppBarFortools(headline: "الادوات المستخدمة", title:  "مجموعة واسعة من الادوات المستخدمة",left: wScreen*0.1,right: wScreen*0.2,)
      ),
      body: const UsedToolsBody(),
    );
  }
}