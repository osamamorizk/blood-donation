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
      this.filled,
      this.maxLines});
  final String hintText;
  final TextInputType? keyboardType;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Color? fillColor;
  final bool? filled;
  final int? maxLines;

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
      maxLines: maxLines,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey.withOpacity(.05),
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
    borderSide: const BorderSide(color: kPrimaryColor),
    borderRadius: BorderRadius.circular(32),
  );
}
