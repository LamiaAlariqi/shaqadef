import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shaqadef/constants/colors.dart';
import 'package:shaqadef/constants/size.dart';
import 'dart:io';

class CustomMultiImagePicker extends StatefulWidget {
  final Function(List<String>) onImagesPicked;

  const CustomMultiImagePicker({Key? key, required this.onImagesPicked}) : super(key: key);

  @override
  _CustomMultiImagePickerState createState() => _CustomMultiImagePickerState();
}

class _CustomMultiImagePickerState extends State<CustomMultiImagePicker> {
  List<String> _imagePaths = [];

  Future<void> _pickImages() async {
    final ImagePicker _picker = ImagePicker();
    final List<XFile>? images = await _picker.pickMultiImage(); 
    if (images != null) {
      setState(() {
        _imagePaths = images.map((image) => image.path).toList();
        print(_imagePaths); 
      });
      widget.onImagesPicked(_imagePaths); 
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _pickImages, 
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8),
        ),
        padding: EdgeInsets.symmetric(horizontal: wScreen * 0.08, vertical: hScreen * 0.005),
        child: _imagePaths.isEmpty 
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.add_a_photo, color: PrimaryColor),
                  const SizedBox(width: 10),
                  Text('اختر صور',style: TextStyle(fontSize: fSize*0.7),),
                ],
              )
            : Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: _imagePaths.map((path) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.file(
                      File(path),
                      width: wScreen * 0.2, // عرض الصورة
                      height: hScreen * 0.1, // ارتفاع الصورة
                      fit: BoxFit.cover,
                    ),
                  );
                }).toList(),
              ),
      ),
    );
  }
}