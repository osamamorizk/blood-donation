import 'package:blood_donation/feature/home/presentation/views/widgets/donner_actions.dart';
import 'package:blood_donation/feature/home/presentation/views/widgets/donner_info.dart';
import 'package:flutter/material.dart';

class DonationRequestItem extends StatelessWidget {
  const DonationRequestItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DonnerInfo(),
        DonnerActions(),
      ],
    );
  }
}
