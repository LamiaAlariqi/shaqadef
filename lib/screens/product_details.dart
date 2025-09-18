import 'package:flutter/material.dart';
import 'package:shaqadef/constants/colors.dart';
import 'package:shaqadef/constants/size.dart';
import 'package:shaqadef/screens/bodies/product_details_body.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
        title:Padding(
          padding:EdgeInsets.only(bottom:hScreen*0.013),
          child: Text("تفاصيل المنتج",style: TextStyle(color: appTextColorPrimary,fontSize: fSize*1.2)),
        ),
        centerTitle: true,
       
        actions: [
          IconButton(
            icon: const Icon(Icons.share,color:  appTextColorPrimary,),
            onPressed: () {
             
            },
          )
        ],
      ),
      
      body: const ProductDetailsBody(),
    );
  }
}