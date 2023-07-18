import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '/core/shared/utils/styles_repository.dart';


class DateFormField extends StatefulWidget {
  final String? Function(String?)? validator;
  final String hintText;
  final Icon iconOutline;
  final void Function(String?)? onChanged;
  final void Function(String?)? onSave;

  const DateFormField({
    Key? key,
    this.validator,
    required this.hintText,
    required this.iconOutline,
    this.onChanged,
    this.onSave,
  }) : super(key: key);

  @override
  State<DateFormField> createState() => _DateFormFieldState();
}

class _DateFormFieldState extends State<DateFormField> {
  TextEditingController dateInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5.h, bottom: 5.h, left: 10.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(
            10.sp,
          ),
        ),
        color: Colors.blueGrey.shade50,
      ),
      child: TextFormField(
        controller: dateInput,
        readOnly: true,
        style: standardTextFieldStyle,
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: widget.iconOutline,
          hintText: widget.hintText,
          hintStyle: standardHintStyle,
        ),
        onSaved: widget.onSave,
        onChanged: widget.onChanged,
        validator: widget.validator,
        onTap: () async {
          DateTime? pickedDate = await showDatePicker(
            context: context,
            initialDate: DateTime(2000),
            firstDate: DateTime(1900),
            lastDate: DateTime.now(),
          );

          if (pickedDate != null) {
            String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
            setState(() {
              dateInput.text =
                  formattedDate; //set output date to TextField value.
            });
          } else {}
        },
      ),
    );
  }

  @override
  void initState() {
    dateInput.text = "";
    super.initState();
  }
}
