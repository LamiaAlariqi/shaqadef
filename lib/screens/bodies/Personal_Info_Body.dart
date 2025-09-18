import 'package:flutter/material.dart';
import 'package:shaqadef/constants/colors.dart';
import 'package:shaqadef/constants/rouTes.dart';
import 'package:shaqadef/constants/size.dart';
import 'package:shaqadef/widget/custom/customTextfield/custom_text.dart';
import 'package:shaqadef/widget/custom/customTextfield/custom_textfield_to_login.dart';
import 'package:shaqadef/widget/custom/customButton/custom_material_button.dart';

class PersonalInfoBody extends StatefulWidget {
  const PersonalInfoBody({super.key});

  @override
  State<PersonalInfoBody> createState() => _PersonalInfoBodyState();
}

class _PersonalInfoBodyState extends State<PersonalInfoBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController governorateController = TextEditingController();
  final TextEditingController directorateController = TextEditingController();
  final TextEditingController landmarkController = TextEditingController();
  final TextEditingController neighborhoodController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController whatsappController = TextEditingController();
  final TextEditingController nicknameController = TextEditingController();

  @override
  void dispose() {
    governorateController.dispose();
    directorateController.dispose();
    landmarkController.dispose();
    neighborhoodController.dispose();
    nameController.dispose();
    phoneController.dispose();
    whatsappController.dispose();
    nicknameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: wScreen * 0.04,
          vertical: hScreen * 0.02,
        ),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              Center(
                child: ClipOval(
                  child: Container(
                    width: wScreen * 0.3,
                    height: wScreen * 0.3,
                    color: Colors.grey[300],
                    child: Icon(Icons.person, size: fSize * 2.5),
                  ),
                ),
              ),
              SizedBox(height: hScreen * 0.02),
              _buildField("الاسم", nameController, Icons.person),
              _buildField("اللقب", nicknameController, Icons.badge_outlined),
              _buildField(
                "رقم جوال اتصال",
                phoneController,
                Icons.phone,
                type: TextInputType.phone,
              ),
              _buildField(
                "رقم جوال واتس",
                whatsappController,
                Icons.phone,
                type: TextInputType.phone,
              ),
              _buildField(
                "المحافظة",
                governorateController,
                Icons.location_city,
              ),
              _buildField(
                "المديرية",
                directorateController,
                Icons.map_outlined,
              ),
              _buildField("أقرب معلم", landmarkController, Icons.place),
              _buildField("الحي", neighborhoodController, Icons.home_outlined),
              SizedBox(height: hScreen * 0.04),
              CustomMaterialButton(
                title: "حفظ",
                vertical: hScreen * 0.01,
                buttonColor: PrimaryColor,
                textColor: Colors.white,
                borderWidth: 0.5,
                borderColor: Colors.blue,
                height: hScreen * 0.07,
                width: wScreen * 0.9,
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.pushReplacementNamed(context, Routes.mainScreen);
                  }
                },
                textsize: fSize * 0.9,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildField(
    String label,
    TextEditingController controller,
    IconData icon, {
    TextInputType type = TextInputType.text,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: hScreen * 0.01),
      padding: EdgeInsets.symmetric(vertical: hScreen * 0.005),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: CustomTextFormFieldToLogin(
        hintText: label,
        suffixIcon: icon,
        keyboardType: type,
        obscureText: false,
        controller: controller,
        enabledBorderColor: Colors.grey,
        focusedBorderColor: PrimaryColor,
        showBorder: false,
        fsize: fSize * 0.85,
      ),
    );
  }
}
