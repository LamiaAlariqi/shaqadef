import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shaqadef/constants/colors.dart';
import 'package:shaqadef/constants/rouTes.dart';
import 'package:shaqadef/constants/size.dart';
import 'package:shaqadef/widget/custom/customTextfield/custom_textfield_to_login.dart';
import 'package:shaqadef/widget/custom/customButton/custom_material_button.dart';
import 'package:shaqadef/widget/usedwidget/singleimagepicker.dart';

class SaveDataBody extends StatelessWidget {
  const SaveDataBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: wScreen*0.05,vertical: hScreen*0.02),
        child: CustomSaveDataForm(),
      ),
    );
  }
}

class CustomSaveDataForm extends StatefulWidget {
  const CustomSaveDataForm({super.key});

  @override
  State<CustomSaveDataForm> createState() => _CustomSaveDataFormState();
}

class _CustomSaveDataFormState extends State<CustomSaveDataForm> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController passwordController=TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  File? _image; 

  Future<void> _pickImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _image = File(image.path); 
      });
    }}

  @override
  void dispose() {
    nameController.dispose();
    addressController.dispose();
    phoneController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
       SizedBox( height: hScreen * .1,),
      
        Center(
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
               ClipOval(
                child: _image != null
            ? Image.file(
                _image!,
               width: wScreen*0.25,
                height: hScreen*0.15,
                fit: BoxFit.cover,
              )
            : Container(
                width: wScreen*0.25,
                height: hScreen*0.14,
                color: Colors.grey[300],
                child: Icon(Icons.person, size: fSize*2.5),
              ),
              ),
              GestureDetector(
                onTap: _pickImage,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: wScreen*0.001,vertical: hScreen*0.001),
                  decoration: BoxDecoration(
                    color: appTextColorPrimary,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child:  Icon(Icons.add, color: Colors.white,size: hScreen*0.03,),
                ),
              ),
            
            ],
          ),
        ),
        SizedBox(height: hScreen * .04),
        Container(
          padding: EdgeInsets.symmetric(horizontal: wScreen*0.02,vertical: hScreen*0.02),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              CustomTextFormFieldToLogin(
                showBorder: false,
                controller: nameController,
                hintText: "الاسم بالكامل",
                keyboardType: TextInputType.text,
                suffixIcon: Icons.person,
                obscureText: false,
                enabledBorderColor: Colors.grey, 
                focusedBorderColor: Colors.blue,
                 fsize: fSize*0.8, 
              ),
              CustomTextFormFieldToLogin(
                 showBorder: false,
                controller: addressController,
                hintText: "العنوان",
                keyboardType: TextInputType.text,
                suffixIcon: Icons.location_on, 
                obscureText: false,
                enabledBorderColor: Colors.grey,
                focusedBorderColor: Colors.blue,
                 fsize: fSize*0.8,
              ),
              CustomTextFormFieldToLogin(
                 showBorder: false,
                controller: phoneController,
                hintText: "رقم الهاتف",
                keyboardType: TextInputType.phone,
                suffixIcon: Icons.phone, 
                obscureText: false,
                enabledBorderColor: Colors.grey,
                focusedBorderColor: Colors.blue,
                 fsize: fSize*0.8,
              ),
              CustomTextFormFieldToLogin(
                 showBorder: false,
                controller: emailController,
                hintText: "البريد الإلكتروني",
                keyboardType: TextInputType.emailAddress,
                suffixIcon: Icons.email_outlined, 
                obscureText: false,
                enabledBorderColor: Colors.grey,
                focusedBorderColor: Colors.blue,
                fsize: fSize*0.8,
              ),
               CustomTextFormFieldToLogin(
                 showBorder: false,
                controller: passwordController,
                hintText: "كلمة المرور ",
                keyboardType: TextInputType.text,
                suffixIcon: Icons.password, 
                obscureText: true,
                enabledBorderColor: Colors.grey,
                focusedBorderColor: Colors.blue,
                fsize: fSize*0.8,
              ),
            ],
          ),
        ),
        SizedBox(height: hScreen * .025),
        CustomMaterialButton(
          title: "حفظ البيانات",
          vertical: hScreen * 0.01,
          buttonColor: PrimaryColor,
          textColor: Colors.white,
          borderWidth: 0.5,
          borderColor: Colors.blue,
          height: hScreen * 0.07,
          width: wScreen * 0.9,
          onPressed: () {
          Navigator.pushReplacementNamed(context, Routes.mainScreen);
          },
          textsize: fSize * 0.8,
        ),
      ],
    );
  }
  }