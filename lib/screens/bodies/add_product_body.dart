import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shaqadef/classes/product.dart';
import 'package:shaqadef/constants/colors.dart';
import 'package:shaqadef/constants/size.dart';
import 'package:shaqadef/widget/custom/customButton.dart';
import 'package:shaqadef/widget/custom/customButton/custom_material_button.dart';
import 'package:shaqadef/widget/custom/customTextfield/custom_text.dart';
import 'package:shaqadef/widget/custom/form/dropdown_form.dart';
import 'package:shaqadef/widget/custom/form/form_text_feild.dart';
import 'package:shaqadef/widget/usedwidget/continer_for_form.dart';
import 'package:shaqadef/widget/usedwidget/multiimagepicker.dart';

class AddProductBody extends StatefulWidget {
  const AddProductBody({super.key});

  @override
  State<AddProductBody> createState() => _AddProductBodyState();
}

class _AddProductBodyState extends State<AddProductBody> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _productname = TextEditingController();
  final TextEditingController _description = TextEditingController();
  final TextEditingController _location = TextEditingController();
  final TextEditingController _price = TextEditingController();
  final TextEditingController _notes = TextEditingController();
  final TextEditingController _quantityController = TextEditingController();

  String selectedCurrency = "ريال يمني";
  String selectedTime = "اقل من سنة";
  String selectedCategory = "الكهربائيات";
  String productStatus = "معطل"; 
  String? mainImagePath; 
  List<String> additionalImagesPaths = [];

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
                  CustomText(text: "اسم المنتج", color: appTextColorPrimary, size: fSize * 0.9),
                  CustomTextFormField(
                    controller: _productname,
                    keyboardType: TextInputType.text,
                    enabledBorderColor: Colors.grey,
                    focusedBorderColor: PrimaryColor,
                  ),
                  SizedBox(height: hScreen * 0.02),
                  CustomText(text: "الوصف", color: appTextColorPrimary, size: fSize * 0.9),
                  CustomTextFormField(
                    controller: _description,
                    keyboardType: TextInputType.text,
                    enabledBorderColor: Colors.grey,
                    focusedBorderColor: PrimaryColor,
                  ),
                  SizedBox(height: hScreen * 0.02),
                  CustomText(text: "الموقع", color: appTextColorPrimary, size: fSize * 0.9),
                  CustomTextFormField(
                    controller: _location,
                    keyboardType: TextInputType.text,
                    enabledBorderColor: Colors.grey,
                    focusedBorderColor: PrimaryColor,
                  ),
                  SizedBox(height: hScreen * 0.02),
                  CustomText(text: "السعر", color: appTextColorPrimary, size: fSize * 0.9),
                  CustomTextFormField(
                    controller: _price,
                    keyboardType: TextInputType.number,
                    enabledBorderColor: Colors.grey,
                    focusedBorderColor: PrimaryColor,
                  ),
                  SizedBox(height: hScreen * 0.02),
                  CustomText(text: "ملاحظات", color: appTextColorPrimary, size: fSize * 0.9),
                  CustomTextFormField(
                    controller: _notes,
                    keyboardType: TextInputType.text,
                    enabledBorderColor: Colors.grey,
                    focusedBorderColor: PrimaryColor,
                  ),
                  SizedBox(height: hScreen * 0.04),
                  CustomDropdown(
                    items: const ["ريال يمني", "ريال سعودي", "دولار"],
                    label: "العملة",
                    selectedchoice: selectedCurrency,
                    onChanged: (value) => setState(() => selectedCurrency = value!),
                  ),
                  SizedBox(height: hScreen * 0.02),
                  CustomDropdown(
                    items: const ["اقل من سنة","منتج جديد","كم سنة إلى ثلاث سنوات","أربع سنوات فأكثر"],
                    label: "مدة الاستخدام",
                    selectedchoice: selectedTime,
                    onChanged: (value) => setState(() => selectedTime = value!),
                  ),
                  SizedBox(height: hScreen * 0.02),
                  CustomDropdown(
                    items: const [
                      'الألعاب ومتعلقات الأطفال','الإكسسوارات والمجوهرات','الإلكترونيات',
                      'الكهربائيات','الخردة المعدنية','الأجهزة الرياضية','الحقائب ومستلزمات التخييم',
                      'الأثاث المنزلي والمكتبي','أدوات المطبخ','الكاميرات وأدوات التصوير',
                      'الأنتيكات','النظارات','الخردة البلاستيكية','الخردة الإلكترونية',
                      'الخردة النحاس','الخردة الحديد'
                    ],
                    label: 'الأصناف',
                    selectedchoice: selectedCategory,
                    onChanged: (value) => setState(() => selectedCategory = value!),
                  ),
                  SizedBox(height: hScreen * 0.02),
                  CustomDropdown(
                    items: const ["معطل", "شغال"],
                    label: "حالة المنتج",
                    selectedchoice: productStatus,
                    onChanged: (value) => setState(() => productStatus = value!),
                  ),
                  SizedBox(height: hScreen * 0.02),
                  CustomText(text: "الكمية", color: appTextColorPrimary, size: fSize * 0.9),
                  CustomTextFormField(
                    controller: _quantityController,
                    keyboardType: TextInputType.number,
                    enabledBorderColor: Colors.grey,
                    focusedBorderColor: PrimaryColor,
                  ),
                ],
              ),
            ),
            SizedBox(height: hScreen * 0.04),
            ContinerForForm(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(text: "اضافة صورة رئيسية", color: appTextColorPrimary, size: fSize * 0.9),
                  SizedBox(height: hScreen * 0.01),
                  GestureDetector(
                    onTap: _pickMainImage,
                    child: Container(
                      height: hScreen*0.05,
                      width: wScreen * 0.9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1,color:Colors.grey),
                        color: Colors.white,
                      ),
                      child: mainImagePath != null
                          ? Image.file(File(mainImagePath!), fit: BoxFit.cover)
                          : Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.add_a_photo,size: fSize*1.5,color: PrimaryColor,),
                              SizedBox(width: hScreen * 0.01 ),
                              const Text("اضغط لإضافة صورة"),
                            ],
                          ),
                    ),
                  ),
                  SizedBox(height: hScreen * 0.04),
                  CustomText(text: "صور إضافية", color: appTextColorPrimary, size: fSize * 0.9),
                  SizedBox(height: hScreen * 0.01),
                  if (additionalImagesPaths.isNotEmpty)
                    Wrap(
                      children: additionalImagesPaths.map((path) => Image.file(File(path), height: 100)).toList(),
                    )
                  else
                    CustomMultiImagePicker(
                      onImagesPicked: (List<String> images) {
                        setState(() => additionalImagesPaths = images);
                      },
                    ),
                ],
              ),
            ),
            SizedBox(height: hScreen * 0.02),
            CustomMaterialButton(
              title: "اضافة منتج",
              vertical: hScreen * 0.01,
              buttonColor: PrimaryColor,
              textColor: appTextButtonColorPrimary,
              borderWidth: 1,
              borderColor: PrimaryColor,
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  add_products();
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

Future<void> _pickMainImage() async {
  await showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        title: Row(
          children: [
            Icon(Icons.warning_amber_rounded, color: Colors.orange, size: fSize * 1.5),
            SizedBox(width: wScreen * 0.02),
            Text(
              "تنبيه",
              style: TextStyle(
                color: Colors.black87,
                fontSize: fSize * 1.2,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        content: Text(
          "أي صورة غير حقيقية لن يتم قبولها.\n\nالرجاء رفع صورة واضحة للمنتج فقط.",
          style: TextStyle(
            color: Colors.black87,
            fontSize: fSize * 0.9,
            height: 1.5,
          ),
        ),
        actionsAlignment: MainAxisAlignment.center,
        actions: [
         CustomButton(onPressed: () => Navigator.of(context).pop(), text: "موافق", backgroundColor: PrimaryColor, textColor: Colors.white, height: hScreen*0.065, width: wScreen*0.25,)
        ],
      );
    },
  );

  final XFile? pickedFile = await ImagePicker().pickImage(source: ImageSource.camera);
  if (pickedFile != null) {
    setState(() => mainImagePath = pickedFile.path);
  }
}


  void add_products() {
    final product = Product(
      productimage: mainImagePath ?? '',
      productdescription: _description.text,
      productname: _productname.text,
      productlocation: _location.text,
      productprice: double.tryParse(_price.text) ?? 0.0,
      producttype: selectedCategory,
      pricetype: selectedCurrency,
      duration: selectedTime,
      notes: _notes.text,
      imagesPaths: additionalImagesPaths,
      status: productStatus,
      quantity: int.tryParse(_quantityController.text) ?? 1,
    );

    _showSnackbar(context, "تمت إضافة المنتج بنجاح!");
    clearData();
  }

  void clearData() {
    _productname.clear();
    _description.clear();
    _location.clear();
    _price.clear();
    _notes.clear();
    _quantityController.clear();
    setState(() {
      mainImagePath = null;
      additionalImagesPaths = [];
      selectedCurrency = "ريال يمني";
      selectedTime = "اقل من سنة";
      selectedCategory = "الكهربائيات";
      productStatus = "معطل";
    });
  }

  void _showSnackbar(BuildContext context, String message) {
    final snackBar = SnackBar(content: Text(message), duration: const Duration(seconds: 3));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
