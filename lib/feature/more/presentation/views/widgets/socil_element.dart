import 'package:flutter/material.dart';

class SocilElement extends StatelessWidget {
  const SocilElement(
      {super.key,
      required this.color,
      required this.iconColor,
      required this.iconData});
  final Color color;
  final Color iconColor;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 170,
      decoration: BoxDecoration(color: color),
      child: Icon(
        size: 40,
        iconData,
        color: iconColor,
      ),
    );
  }
}
