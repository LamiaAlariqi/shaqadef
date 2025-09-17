import 'package:flutter/material.dart';
import 'package:shaqadef/screens/bodies/contact_body.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Container(
          alignment: Alignment.centerRight, // محاذاة النص إلى اليمين
          child: const Text("تواصل معنا"),
        ),
        automaticallyImplyLeading: false, // منع السهم الافتراضي
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_forward),
            onPressed: () {
              Navigator.pop(context); // العودة إلى الصفحة السابقة
            },
          ),
        ],
      ),
      body: const ContactBody(),
    );
  }
}