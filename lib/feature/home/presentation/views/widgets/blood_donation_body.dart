import 'package:blood_donation/core/helpers/consts.dart';
import 'package:blood_donation/core/router/routes.dart';
import 'package:blood_donation/feature/home/presentation/views/widgets/donnation_request.dart';
import 'package:blood_donation/feature/home/presentation/views/widgets/sorting_donation_request.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BloodDonationBody extends StatelessWidget {
  const BloodDonationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 40),
        child: FloatingActionButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32),
          ),
          backgroundColor: kPrimaryColor,
          onPressed: () {
            GoRouter.of(context).push(Routes.kAddDonationRequest);
          },
          child: const Icon(
            size: 30,
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
      body: const Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: SortingDonationRequest(),
          ),
          SizedBox(
            height: 10,
          ),
          DonnationRequest(),
        ],
      ),
    );
  }
}
