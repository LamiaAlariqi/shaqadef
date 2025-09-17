import 'package:flutter/material.dart';
import 'package:shaqadef/constants/size.dart';
import 'package:shaqadef/screens/bodies/seach_body.dart';
import 'package:shaqadef/widget/usedwidget/app_bar_general.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar:PreferredSize(preferredSize:Size.fromHeight(hScreen* 0.1), child: const AppBarBody(text: "بحث")),
     body:Padding(
      padding: const EdgeInsets.all(16.0),
      child: SeachBody()
    )
    );
  }
}