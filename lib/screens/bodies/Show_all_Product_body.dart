import 'package:flutter/material.dart';
import 'package:shaqadef/classes/product.dart';
import 'package:shaqadef/constants/rouTes.dart';
import 'package:shaqadef/constants/size.dart';
import 'package:shaqadef/screens/product_details.dart';
import 'package:shaqadef/widget/usedwidget/gridviewbuilder.dart';

class ShowAllProductBody extends StatelessWidget {
  const ShowAllProductBody({super.key,required this.products});
  final List<Product>products;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
               Padding(
                 padding: EdgeInsets.symmetric(horizontal: wScreen*0.02,vertical: hScreen*0.015),
                 child: CustomGridViewBuilder(
                  products: products,
                  onTap: (product) {
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductDetails(product: product)));
                  },
                               ),
               )
      ],
    );
  }
}