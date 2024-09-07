import 'package:blood_donation/consts.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.keyboardType,
  });
  final String hintText;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextFormField(
        keyboardType: keyboardType,
        decoration: InputDecoration(
            hintTextDirection: TextDirection.rtl,
            hintText: hintText,
            focusedBorder: borderBuild(),
            enabledBorder: borderBuild(),
            border: borderBuild()),
      ),
    );
  }
}

OutlineInputBorder borderBuild() {
  return OutlineInputBorder(
    borderSide: BorderSide(color: kPrimaryColor),
    borderRadius: BorderRadius.circular(32),
  );
}
