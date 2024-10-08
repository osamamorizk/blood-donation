import 'package:blood_donation/core/helpers/consts.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.text, this.onPressed, this.backgroundColor});
  final String text;
  final void Function()? onPressed;
  final WidgetStateProperty<Color?>? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 160,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor:
              backgroundColor ?? WidgetStateProperty.all<Color>(kPrimaryColor),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
