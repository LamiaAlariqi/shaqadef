import 'package:flutter/material.dart';
import 'package:shaqadef/constants/size.dart';

class AppBarBody extends StatelessWidget {
  final String? text;
  final IconData? leadingIcon; 
  final VoidCallback? onLeadingPressed;
  final Color? leadingIconColor;

  const AppBarBody({
    super.key,
    this.text,
    this.leadingIcon,
    this.onLeadingPressed,
    this.leadingIconColor,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Padding(
        padding: EdgeInsets.symmetric(horizontal: wScreen * 0.04),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (leadingIcon != null)
              InkWell(
                onTap: onLeadingPressed,
                child: Icon(
                  leadingIcon,
                  color: leadingIconColor ?? Theme.of(context).iconTheme.color,
                ),
              )
            else if (text != null)
              Text(
                text!,
                style: Theme.of(context).textTheme.headlineMedium,
              ),

            InkWell(
              child: const Icon(Icons.notifications),
              onTap: () {
             
              },
            ),
          ],
        ),
      ),
    );
  }
}
