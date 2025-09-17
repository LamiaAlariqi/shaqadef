import 'package:flutter/material.dart';
import 'package:shaqadef/constants/colors.dart';
import 'package:shaqadef/constants/size.dart';
import 'package:shaqadef/widget/custom/customButton/custom_material_button.dart';
import 'package:shaqadef/widget/custom/customTextfield/custom_text.dart';
import 'package:shaqadef/widget/custom/form/form_text_feild.dart';
import 'package:shaqadef/widget/usedwidget/Date_input_field.dart';
import 'package:shaqadef/widget/usedwidget/continer_for_form.dart';
class AddAdvertiseBody extends StatefulWidget {
  const AddAdvertiseBody({super.key});

  @override
  State<AddAdvertiseBody> createState() => _AddAdvertiseBodyState();
}

class _AddAdvertiseBodyState extends State<AddAdvertiseBody> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  DateTime date = DateTime.now();
  TextEditingController _advertise_name = TextEditingController();
  TextEditingController _advertise_description = TextEditingController();
  TextEditingController _advertise_link = TextEditingController();
  TextEditingController _priceController = TextEditingController();
  TextEditingController _startdateController = TextEditingController();
  TextEditingController _enddateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: wScreen * 0.04, vertical: hScreen * 0.03),
      child: Form(
        key: _formKey,
        child: ListView(
          children: [
            ContinerForForm(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(text: "اسم الحملة الاعلانية", color: appTextColorPrimary, size: fSize * 0.9),
                  CustomTextFormField(
                    controller: _advertise_name,
                    keyboardType: TextInputType.text,
                    enabledBorderColor: Colors.grey,
                    focusedBorderColor: PrimaryColor,
                  ),
                  SizedBox(height: hScreen * 0.02),

                  CustomText(text: "الوصف", color: appTextColorPrimary, size: fSize * 0.9),
                  CustomTextFormField(
                    controller: _advertise_description,
                    keyboardType: TextInputType.text,
                    enabledBorderColor: Colors.grey,
                    focusedBorderColor: PrimaryColor,
                  ),
                  SizedBox(height: hScreen * 0.02),

                  CustomText(text: "رابط الاعلان", color: appTextColorPrimary, size: fSize * 0.9),
                  CustomTextFormField(
                    controller: _advertise_link,
                    keyboardType: TextInputType.url,
                    enabledBorderColor: Colors.grey,
                    focusedBorderColor: PrimaryColor,
                  ),
                  SizedBox(height: hScreen * 0.04),

                  CustomText(text: 'تاريخ البداية', color: appTextColorPrimary, size: fSize * 0.8),
                  SizedBox(height: hScreen * 0.02),
                  DateInputField(dateController: _startdateController, hitext: 'تاريخ البداية'),
                  SizedBox(height: hScreen * 0.02),

                  CustomText(text: 'تاريخ الانتهاء', color: appTextColorPrimary, size: fSize * 0.8),
                  SizedBox(height: hScreen * 0.02),
                  DateInputField(dateController: _enddateController, hitext: 'تاريخ النهاية'),
                  SizedBox(height: hScreen * 0.02),

                  CustomText(text: 'اجمالي المبلغ', color: appTextColorPrimary, size: fSize * 0.8),
                  CustomTextFormField(
                    controller: _priceController,
                    keyboardType: TextInputType.number,
                    enabledBorderColor: Colors.grey,
                    focusedBorderColor: PrimaryColor,
                  ),
                ],
              ),
            ),
            SizedBox(height: hScreen * 0.04),

            CustomMaterialButton(
              title: "اضافة اعلان",
              vertical: hScreen * 0.01,
              buttonColor: PrimaryColor,
              textColor: appTextButtonColorPrimary,
              borderWidth: 1,
              borderColor: PrimaryColor,
              textsize: fSize * 0.8,
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _showSnackbar(context, 'تم ارسال الاعلان');
                }
              },
              height: hScreen * 0.07,
              width: wScreen * 1,
            ),
          ],
        ),
      ),
    );
  }

  Future<void> onTapGetDate() async {
    DateTime? newDate = await showDatePicker(
      context: context,
      initialDate: date,
      firstDate: DateTime(2020),
      lastDate: DateTime(2025),
    );
    if (newDate == null) {
      return;
    } else {
      date = newDate;
      _startdateController.text = "${date.day}/${date.month}/${date.year}";
      setState(() {});
    }
  }

  void _showSnackbar(BuildContext context, String message) {
    final snackBar = SnackBar(
      content: Text(message),
      duration: Duration(seconds: 3),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}