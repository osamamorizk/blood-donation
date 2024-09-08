import 'package:blood_donation/core/helpers/consts.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.hintText,
      this.keyboardType,
      this.prefixIcon,
      this.suffixIcon,
      this.fillColor,
      this.filled});
  final String hintText;
  final TextInputType? keyboardType;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Color? fillColor;
  final bool? filled;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: super.key,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Field is required';
        }
        return null;
      },
      keyboardType: keyboardType,
      decoration: InputDecoration(
          filled: filled,
          fillColor: fillColor,
          suffixIcon: suffixIcon,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
          hintStyle: const TextStyle(fontSize: 14),
          prefixIconColor: kPrimaryColor,
          prefixIcon: prefixIcon,
          hintTextDirection: TextDirection.rtl,
          hintText: hintText,
          focusedBorder: borderBuild(),
          enabledBorder: borderBuild(),
          border: borderBuild()),
    );
  }
}

OutlineInputBorder borderBuild() {
  return OutlineInputBorder(
    borderSide: BorderSide(color: kPrimaryColor),
    borderRadius: BorderRadius.circular(32),
  );
}
