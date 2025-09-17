import 'package:flutter/material.dart';
import 'package:shaqadef/constants/colors.dart';
import 'package:shaqadef/constants/size.dart';
import 'package:shaqadef/widget/custom/customButton/custom_material_button.dart';
import 'package:shaqadef/widget/custom/customTextfield/custom_text.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactBody extends StatelessWidget {
  const ContactBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: hScreen * 0.06, horizontal: wScreen * 0.03),
      child: Center(
        child: Column(
          children: [
            CustomText(text: "مــــرحـــــبا", color: appTextColorPrimary, size: fSize * 1.1),
            CustomText(text: "يسعدنا تواصلك معنا من خلال", color: appTextColorPrimary, size: fSize * 0.9),
            SizedBox(height: hScreen * 0.02),
            CustomMaterialButton(
              title: "Facebook",
              vertical: hScreen * 0.01,
              buttonColor: Color(0xFF0E76BC),
              textColor: appWhite,
              borderWidth: 0.5,
              borderColor: Color(0xFF0E76BC),
              height: hScreen * 0.06,
              width: wScreen * 0.9,
              textsize: fSize * 0.8,
              onPressed: () {
                launchURL('https://www.facebook.com/shaqadef/');
              },
            ),
            SizedBox(height: hScreen * 0.02),
            CustomMaterialButton(
              title: "WhatsApp",
              vertical: hScreen * 0.01,
              buttonColor: Color(0xfff0EBC65),
              textColor: appWhite,
              borderWidth: 0.5,
              borderColor: Color(0xfff0EBC65),
              height: hScreen * 0.06,
              width: wScreen * 0.9,
              textsize: fSize * 0.8,
              onPressed: () {
                launchURL('https://wa.me/+967783043205'); 
              },
            ),
            SizedBox(height: hScreen * 0.02),
            CustomMaterialButton(
              title: "Instagram",
              vertical: hScreen * 0.01,
              buttonColor: Color(0xfffE1306C),
              textColor: appWhite,
              borderWidth: 0.5,
              borderColor: Color(0xfffDA2F8A),
              height: hScreen * 0.06,
              width: wScreen * 0.9,
              textsize: fSize * 0.8,
              onPressed: () {
                launchURL('https://www.instagram.com/shaqadef_24?igsh=ZGhraXdnNmV5cnBn'); 
              },
            ),
            SizedBox(height: hScreen * 0.02),
            CustomMaterialButton(
              title: "Email",
              vertical: hScreen * 0.01,
              buttonColor: Color(0xfff515C6F),
              textColor: appWhite,
              borderWidth: 0.5,
              borderColor: Color(0xfff515C6F),
              height: hScreen * 0.06,
              width: wScreen * 0.9,
              textsize: fSize * 0.8,
              onPressed: () {
                launchURL('mailto:info@shaqadef.com'); // استبدل بالبريد الإلكتروني الصحيح
              },
            ),
            SizedBox(height: hScreen * 0.02),
          ],
        ),
      ),
    );
  }

  void launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      print('Could not launch $url');
    }
  }
}