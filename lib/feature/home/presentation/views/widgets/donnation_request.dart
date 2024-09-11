import 'package:blood_donation/feature/home/presentation/views/widgets/donnation_request_item.dart';

import 'package:flutter/material.dart';

class DonnationRequest extends StatelessWidget {
  const DonnationRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.only(bottom: 60),
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(top: 8, left: 16, right: 10),
            child: DonationRequestItem(),
          );
        },
      ),
    );
  }
}
