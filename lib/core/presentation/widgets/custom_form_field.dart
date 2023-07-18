import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '/core/shared/utils/styles_repository.dart';

class CustomTextFormField extends StatelessWidget {
  final String? Function(String?)? validator;
  final String hintText;
  final Icon iconOutline;
  final String? initialValue;
  final void Function(String?)? onChanged;
  final void Function(String?)? onSave;
  final TextInputType? textInputType;

  const CustomTextFormField({
    Key? key,
    this.validator,
    required this.hintText,
    required this.iconOutline,
    this.onChanged,
    this.onSave,
    this.initialValue,
    this.textInputType = TextInputType.text,
  }) : super(key: key);

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
        initialValue: initialValue,
        keyboardType: textInputType,
        style: standardTextFieldStyle,
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: iconOutline,
          hintText: hintText,
          hintStyle: standardHintStyle,
        ),
        onSaved: onSave,
        onChanged: onChanged,
        validator: validator,
      ),
    );
  }
}
