import 'package:flutter/material.dart';
import 'package:shaqadef/constants/size.dart';
import 'package:shaqadef/screens/bodies/add_product_body.dart';
import 'package:shaqadef/widget/usedwidget/app_bar_general.dart';

class AddProductScreen extends StatelessWidget {
  const AddProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(hScreen*0.1), child: const AppBarBody(text: "اضافة منتج")),
      body: const AddProductBody(),
    );
  }
}