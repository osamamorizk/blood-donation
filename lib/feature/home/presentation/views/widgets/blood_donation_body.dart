import 'package:blood_donation/core/helpers/consts.dart';
import 'package:blood_donation/feature/home/presentation/views/widgets/blood_donner_sorting.dart';
import 'package:flutter/material.dart';

class BloodDonationBody extends StatelessWidget {
  const BloodDonationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            children: [
              RequestDonnerSorting(
                hintText: 'أختار فصيلة الدم',
                bloodTypeList: kBloodTypeList,
              ),
              const Spacer(),
              RequestDonnerSorting(
                bloodTypeList: kEgyptGovernorates,
                hintText: 'اختار المحافظة',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
