import 'package:blood_donation/feature/home/presentation/views/widgets/donnation_request_item.dart';

import 'package:flutter/material.dart';

class DonnationRequest extends StatelessWidget {
  const DonnationRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        // shrinkWrap: true,
        itemCount: 20,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(top: 8, left: 16, right: 2),
            child: DonationRequestItem(),
          );
        },
      ),
    );
  }
}
