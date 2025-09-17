import 'package:flutter/material.dart';
import 'package:shaqadef/constants/colors.dart';
import 'package:shaqadef/widget/custom/customTextfield/textForm_field_withicon.dart';

class DateInputField extends StatefulWidget {
  const DateInputField({super.key,required this.dateController,required this.hitext});
  
  final TextEditingController dateController;
  final String hitext;


  @override
  State<DateInputField> createState() => _DateInputFieldState();
}

class _DateInputFieldState extends State<DateInputField> {
   DateTime date = DateTime.now();
  @override
    Widget build(BuildContext context) {
    return  TextFormFaildWithIconButton(
            productName: widget.dateController,
            icon: Icons.calendar_month,
            iconColor: Colors.white,
            hintText:widget.hitext,
            keyboardType: TextInputType.datetime,
            readOnly: true,
            onTap: onTapGetDate,
            onTapText: onTapGetDate,
          );
  }
  Future<void> onTapGetDate() async {
    DateTime? newDate = await showDatePicker(
      context: context,
      initialDate: date,
      firstDate: DateTime(2020),
      lastDate: DateTime(2100),
    );
    if (newDate == null) {
      return;
    } else {
      date = newDate;
      widget.dateController.text =
          "${date.day}/${date.month}/${date.year}";
      setState(() {});
    }
  }
}