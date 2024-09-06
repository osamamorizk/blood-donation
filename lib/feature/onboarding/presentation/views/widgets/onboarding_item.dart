import 'package:blood_donation/core/theaming/text_styles.dart';
import 'package:blood_donation/feature/onboarding/data/models/onboarding_model.dart';
import 'package:flutter/material.dart';

class OnboardingItem extends StatelessWidget {
  const OnboardingItem({super.key, required this.onboardingModel});
  final OnboardingModel onboardingModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Image(
            fit: BoxFit.contain,
            image: AssetImage(onboardingModel.image),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          style: TextStyles.textStyle24,
          textAlign: TextAlign.center,
          onboardingModel.text,
        )
      ],
    );
  }
}
