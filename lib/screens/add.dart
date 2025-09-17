import 'package:flutter/material.dart';
import 'package:shaqadef/constants/size.dart';
import 'package:shaqadef/screens/bodies/add_screen_body.dart';
import 'package:shaqadef/widget/usedwidget/app_bar_general.dart';

class AddScreen extends StatelessWidget {
  const AddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: PreferredSize(preferredSize:Size.fromHeight(hScreen* 0.1),
       child: const AppBarBody(text: "المنتجات")),
       body: const AddScreenBody(),
     
    );
  }
}