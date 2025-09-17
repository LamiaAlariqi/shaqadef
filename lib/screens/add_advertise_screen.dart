import 'package:flutter/material.dart';
import 'package:shaqadef/constants/size.dart';
import 'package:shaqadef/screens/bodies/add_advertise_body.dart';
import 'package:shaqadef/widget/usedwidget/app_bar_general.dart';

class AddAdvertiseScreen extends StatelessWidget {
  const AddAdvertiseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: PreferredSize(preferredSize: Size.fromHeight(hScreen*0.1), child: const AppBarBody(text:"اضافة اعلان")),
    body: const AddAdvertiseBody()
    );
    
}}