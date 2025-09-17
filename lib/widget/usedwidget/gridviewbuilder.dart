import 'package:flutter/material.dart';
import 'package:shaqadef/classes/product.dart';
import 'package:shaqadef/constants/size.dart';
import 'package:shaqadef/widget/usedwidget/card.dart';

class CustomGridViewBuilder extends StatelessWidget {
  final List<Product> products;
  final Function(Product) onTap; 
  const CustomGridViewBuilder({
    super.key,
    required this.products,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.symmetric(horizontal: wScreen * 0.015),
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 2.2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: products.length, // ا
      itemBuilder: (context, index) {
        return SizedBox.expand(
          child: InkWell(
            onTap: () => onTap(products[index]), 
            child: CustomCard(
              product: products[index].productimage,
              names: products[index].productname,
              prices: products[index].productprice,
            ),
          ),
        );
      },
    );
  }
}