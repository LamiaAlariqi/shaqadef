import 'package:flutter/material.dart';

class CustomDropdown extends StatelessWidget {
  final List<String> items; // قائمة العناصر
  final String label;
  final Function(String?)? onChanged;
  final String selectedchoice;

  const CustomDropdown({
    super.key,
    required this.items,
    required this.label,
    required this.onChanged,
    required this.selectedchoice,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: selectedchoice,
      onChanged: onChanged,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
      ),
      items: _buildDropdownMenuItems(items), // استخدام الدالة لبناء العناصر
    );
  }

  // دالة لتحويل قائمة العناصر إلى قائمة من DropdownMenuItem
  List<DropdownMenuItem<String>> _buildDropdownMenuItems(List<String> items) {
    List<DropdownMenuItem<String>> dropdownItems = [];
    for (String item in items) {
      dropdownItems.add(
        DropdownMenuItem<String>(
          value: item,
          child: Text(item),
        ),
      );
    }
    return dropdownItems;
  }
}