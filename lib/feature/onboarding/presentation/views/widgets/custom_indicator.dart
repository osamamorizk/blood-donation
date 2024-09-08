import 'package:blood_donation/core/helpers/consts.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomSmoothIndicator extends StatelessWidget {
  const CustomSmoothIndicator({
    super.key,
    required this.controller,
  });

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
        controller: controller,
        count: onboardList.length,
        effect: const ExpandingDotsEffect(
          activeDotColor: Colors.red,
        ),
        onDotClicked: (index) {});
  }
}
