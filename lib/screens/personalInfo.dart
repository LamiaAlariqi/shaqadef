import 'package:flutter/material.dart';
import 'package:shaqadef/constants/colors.dart';
import 'package:shaqadef/constants/size.dart';
import 'package:shaqadef/screens/bodies/Personal_Info_Body.dart';

class Personalinfo extends StatelessWidget {
  const Personalinfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(hScreen*0.01),
            child: Text("المعلومات الشخصية",style: TextStyle(color: appTextColorPrimary,),),
          ),
        ],
      ),),
      body: PersonalInfoBody(
        
      ),
    );

  }
}