import 'package:flutter/material.dart';
import 'package:shaqadef/constants/size.dart';

class AppBarBody extends StatelessWidget {
  const AppBarBody({super.key,required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Padding(
        padding: EdgeInsets.only(left: wScreen * 0.04),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
               Text(
              text,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            InkWell(

              child: Icon(Icons.notifications),
              onTap: () {
                // التعامل مع الضغط هنا
              },
            ),
         
          ],
        ),
      ),
    );
  }
}