import 'package:flutter/material.dart';
import 'package:shaqadef/constants/colors.dart';
import 'package:shaqadef/constants/images.dart';
import 'package:shaqadef/constants/size.dart';
import 'package:shaqadef/widget/usedwidget/stack.dart';

class AppBarFortools extends StatelessWidget {
  const AppBarFortools({super.key,required this.headline,required this.title,required this.left,required this.right});
  final String headline;
  final String title;
  final double left;
  final double right;
  @override
  Widget build(BuildContext context) {
    return Stack(
          children: [
            StackOrder(
              image: Images.scrap,
              text: headline,
              height: hScreen * 1,
              width: wScreen * 1,
              fontsize:fSize * 1.4,
              padding: EdgeInsets.only(left: left, right: right,top: hScreen * 0.085),
              edge: 0,
              child:  Text(
               title,
                style: TextStyle(color: appWhite),
              ),
            ),
            Positioned(
              left: 16, 
              top: 16, 
              child: IconButton(
                icon: Icon(Icons.arrow_forward, color: appWhite), 
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Positioned(
              right: 16, 
              top: 16,
              child: IconButton(
                icon: Icon(Icons.search, color: appWhite), 
                onPressed: () {
                 
                },
              ),
            ),
          ],
        );
  }
}