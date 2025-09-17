import 'package:flutter/material.dart';
import 'package:shaqadef/constants/size.dart';

class CustomIconButtonWithOutText extends StatelessWidget {
  const CustomIconButtonWithOutText({
    super.key,
    this.onTap,
    required this.icon,
  });
  final void Function()? onTap;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: hScreen * .07,
        width: wScreen * .15,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColorDark,
          boxShadow: [
            BoxShadow(
              blurRadius: fSize * .09,
            )
          ],
          borderRadius: BorderRadius.circular(
            wScreen * .02,
          ),
        ),
        child: Icon(
          icon,
          color: Colors.white,
          size: hScreen * .04,
        ),
      ),
    );
  }
}
