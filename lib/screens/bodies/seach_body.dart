import 'package:flutter/material.dart';
import 'package:shaqadef/constants/colors.dart';

class SeachBody extends StatelessWidget {
final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: searchController,
        decoration: InputDecoration(
          hintText: 'ابحث هنا',
          hintStyle: const TextStyle(color: Colors.grey),
          prefixIcon: const Icon(Icons.search), 
        enabledBorder: OutlineInputBorder(
         borderSide: const BorderSide(color: Colors.grey), 
          borderRadius: BorderRadius.circular(30)
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color:PrimaryColor), 
          borderRadius: BorderRadius.circular(30)
        ),
        ),
        textAlign: TextAlign.right, 
        onFieldSubmitted: (value) {
         
        },
      );
  }
}