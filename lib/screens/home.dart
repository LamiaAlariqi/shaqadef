import 'package:flutter/material.dart';
import 'package:shaqadef/widget/usedwidget/app_bar_general.dart';
import 'package:shaqadef/widget/usedwidget/bottomnavigator.dart';
import 'package:shaqadef/constants/size.dart';
import 'package:shaqadef/screens/bodies/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(hScreen* 0.1), 
      child: const AppBarBody(text: "الفئات",)),
      body: const HomeBody(),
      
    );
  }
}