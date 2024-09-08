import 'package:blood_donation/feature/home/presentation/views/widgets/blood_donation_body.dart';
import 'package:flutter/material.dart';

class BloodDonationView extends StatelessWidget {
  const BloodDonationView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BloodDonationBody(),
    );
  }
}
