import 'package:blood_donation/core/helpers/consts.dart';
import 'package:blood_donation/feature/home/presentation/views/widgets/add_donation_request_body.dart';
import 'package:flutter/material.dart';

class AddDonationRequest extends StatelessWidget {
  const AddDonationRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white, size: 24),
        centerTitle: true,
        backgroundColor: kPrimaryColor,
        title: const Text(
          'طلب تبرع',
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
          ),
        ),
      ),
      body: const AddDonationRequestBody(),
    );
  }
}
