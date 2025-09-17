import 'package:flutter/material.dart';
import 'package:shaqadef/constants/colors.dart';
import 'package:shaqadef/constants/size.dart';

class CustomListtile extends StatelessWidget {
  const CustomListtile({super.key, required this.title, required this.icon, required this.onTap});
final String title;
final IconData icon;
final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon,size: fSize*1.3,color: appTextColorPrimary,),title:Text(title,style: TextStyle(fontSize: fSize*0.8),),
            trailing:Icon(Icons.arrow_forward_outlined,size: fSize*1.3),
            onTap: onTap
    );
  }
}

