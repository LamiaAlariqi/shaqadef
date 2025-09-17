import 'package:flutter/material.dart';
import 'package:shaqadef/constants/size.dart';
import 'package:shaqadef/screens/bodies/profile_body.dart';
import 'package:shaqadef/widget/usedwidget/app_bar_general.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: PreferredSize(preferredSize: Size.fromHeight(hScreen* 0.1), 
      child: const AppBarBody(text: "",)),
      body: const ProfileBody(),
    );
  }
}