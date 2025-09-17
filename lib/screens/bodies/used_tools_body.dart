import 'package:flutter/material.dart';
import 'package:shaqadef/classes/product.dart';
import 'package:shaqadef/constants/colors.dart';
import 'package:shaqadef/constants/images.dart';
import 'package:shaqadef/constants/size.dart';
import 'package:shaqadef/widget/usedwidget/gridviewbuilder.dart';

class UsedToolsBody extends StatelessWidget {
  const UsedToolsBody({super.key});

  @override
  Widget build(BuildContext context) {
//   List<Product> myProducts = [
//   Product(image: Images.perf, name: 'كرسي', price: 100),
//   Product(image: Images.cream, name: 'دولاب', price: 200),
// ];
List<String>categories=["الالكترونيات ","الكهربائيات","ادوات المطبخ"];
    return Padding(
       padding: EdgeInsets.symmetric(horizontal: wScreen*0.02,vertical: hScreen*0.01),
      child: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                   padding: EdgeInsets.only(right: hScreen*0.02),
                    child: Text(
                      categories[index],
                      style: TextStyle(fontSize: fSize*1.1, fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                    
                    },
                    child:  Text(
                      'عرض الكل',
                      style: TextStyle(color: PrimaryColor, fontSize: fSize*0.6),
                    ),
                  ),
                ],
              ),
             
              // CustomGridViewBuilder(products: myProducts,onTap: (Product){},),
             
            ],
          );
        },
      ),
    );
  }
}