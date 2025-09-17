import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shaqadef/constants/size.dart';

class CustomSingleImagePicker extends StatefulWidget {
  final Function(String?) onImagePicked;
  final String? hintText;

  const CustomSingleImagePicker({Key? key, required this.onImagePicked,this.hintText})
      : super(key: key);

  @override
  _CustomSingleImagePickerState createState() =>
      _CustomSingleImagePickerState();
}

class _CustomSingleImagePickerState extends State<CustomSingleImagePicker> {
  String? _imagePath;

  Future<void> _pickImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _imagePath = image.path;
      });
      widget.onImagePicked(_imagePath);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: _pickImage,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
          padding: EdgeInsets.symmetric(
              horizontal: wScreen * 0.20, vertical: hScreen * 0.005),
          child: _imagePath == null // تحقق مما إذا كانت الصورة مختارة
              ? Row(
                  children: [
                    Icon(Icons.add_a_photo, color: Colors.blue),
                    SizedBox(width: wScreen * 0.02),
                    Text(widget.hintText??'اختر صورة رئيسية' ,style: TextStyle(fontSize: fSize*0.7),),
                  ],
                )
              : Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.file(
                    File(_imagePath!),
                    width: wScreen * 0.25, // 25% من عرض الشاشة
                    height: hScreen * 0.1,
                    fit: BoxFit.cover,
                  ),
                ),
        ));
  }
}
