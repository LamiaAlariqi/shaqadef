import 'package:flutter/material.dart';

class TextFieldToRead extends StatelessWidget {
  final String initialValue;

  TextFieldToRead({required this.initialValue});

  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: true, 
      controller: TextEditingController(text: initialValue),
      decoration:InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.withOpacity(0.7)), 
          borderRadius: BorderRadius.zero, 
        ),
      ),
    );
  }
}