import 'package:blood_donation/consts.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key, required this.hintText, this.keyboardType, this.prefixIcon});
  final String hintText;
  final TextInputType? keyboardType;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 55,
      child: TextFormField(
        key: super.key,
        validator: (value) {
          if (value!.isEmpty) {
            return 'Field is required';
          }
          return null;
        },
        keyboardType: keyboardType,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(4),
            hintStyle: const TextStyle(fontSize: 14),
            prefixIconColor: kPrimaryColor,
            prefixIcon: prefixIcon,
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
