import 'package:blood_donation/feature/home/presentation/views/widgets/donnation_request.dart';
import 'package:blood_donation/feature/home/presentation/views/widgets/sorting_donation_request.dart';
import 'package:flutter/material.dart';

class BloodDonationBody extends StatelessWidget {
  const BloodDonationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SortingDonationRequest(),
        ),
        SizedBox(
          height: 10,
        ),
        DonnationRequest(),
      ],
    );
  }
}
