import 'package:flutter/material.dart';
import 'package:shaqadef/classes/product.dart';
import 'package:shaqadef/constants/size.dart';
import 'package:shaqadef/screens/bodies/Show_all_Product_body.dart';
import 'package:shaqadef/widget/usedwidget/app_bar_fortools.dart';
import 'package:shaqadef/widget/usedwidget/app_bar_general.dart';

class ShowAllproduct extends StatelessWidget {
  const ShowAllproduct({super.key, required this.Category, required this.product});
  final String Category;
  final List<Product> product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: PreferredSize(
        preferredSize: Size.fromHeight(hScreen * 0.18),
        child: AppBarFortools(headline: Category, title:  "مجموعة واسعة من الادوات والخرداوات",left: wScreen*0.1,right: wScreen*0.2,)
      ),
      body: ShowAllProductBody(products: product),
    );
  }
}