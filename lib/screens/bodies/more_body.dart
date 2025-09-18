import 'package:flutter/material.dart';
import 'package:shaqadef/constants/colors.dart';
import 'package:shaqadef/constants/rouTes.dart';
import 'package:shaqadef/constants/size.dart';
import 'package:shaqadef/widget/usedwidget/listTile.dart';
import 'package:url_launcher/url_launcher.dart';

class MoreBody extends StatelessWidget {
  const MoreBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: wScreen*0.04,vertical: hScreen*0.03),
      child: ListView(
        children: [
          Container(
             padding: EdgeInsets.symmetric(horizontal: wScreen*0.02,vertical: hScreen*0.01),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
               color: appWhite,
            ),
            child: Column(
              children: [
                CustomListtile(title: "الدعم الفني", icon: Icons.support_agent, onTap: (){
                  launchEmailSubmission();
                }),
                Divider(height: hScreen*0.01,color: Colors.grey,),
                CustomListtile(title: "طرق الدفع", icon: Icons.payment, onTap: (){
                   Navigator.of(context).pushNamed(Routes.paymentScreen);
                }),
                Divider(height: hScreen*0.01,color: Colors.grey,),
                  CustomListtile(title: "الاشعارات", icon: Icons.notifications, onTap: (){})
              ],
            )
            ),
            SizedBox(height: hScreen*0.03,),
             Container(
             padding: EdgeInsets.symmetric(horizontal: wScreen*0.02,vertical: hScreen*0.01),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
               color: appWhite,
            ),
            child: Column(
              children: [
                CustomListtile(title: "سياسة المتجر", icon: Icons.store, onTap: (){
                   Navigator.of(context).pushNamed(Routes.storepolicy);
                }),
                Divider(height: hScreen*0.01,color: Colors.grey,),
                CustomListtile(title: "سياسة المنصة", icon: Icons.policy, onTap: (){
                   Navigator.of(context).pushNamed(Routes.platformpolicy);
                }),
                Divider(height: hScreen*0.01,color: Colors.grey,),
                CustomListtile(title: "تواصل معنا", icon: Icons.contact_mail, onTap: (){
                   Navigator.of(context).pushNamed(Routes.contact);
                }),
                Divider(height: hScreen*0.01,color: Colors.grey,),
                CustomListtile(title: "من نحن", icon:Icons.info, onTap: (){
                  Navigator.of(context).pushNamed(Routes.about);
                }),Divider(height: hScreen*0.01,color: Colors.grey,),
                  CustomListtile(title: "تسجيل الخروج", icon: Icons.exit_to_app_outlined, onTap: (){})
              ],
            )
            ),
          
        ],
      ),
    );
  }
 void launchEmailSubmission() async {
  print("mlll");
    final Uri params = Uri(
      scheme: 'mailto',
      path: 'support@shaqadef.com',
    );
    String url = params.toString();
  final Uri emailUri = Uri.parse(url);

  if (await canLaunchUrl(emailUri)) {
    print('Could not launch $url');
    await launchUrl(emailUri);
  } else {
    print('Could not launch $url');
  }
}
}