import 'package:blood_donation/feature/onboarding/presentation/views/onboarding.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BloodDonation());
}

class BloodDonation extends StatelessWidget {
  const BloodDonation({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      locale: Locale('ar'),
      debugShowCheckedModeBanner: false,
      home: Onboarding(),
    );
  }
}
