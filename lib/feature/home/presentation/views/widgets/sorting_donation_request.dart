import 'package:blood_donation/core/helpers/consts.dart';
import 'package:blood_donation/feature/home/presentation/views/widgets/sorting_item.dart';
import 'package:flutter/material.dart';

class SortingDonationRequest extends StatelessWidget {
  const SortingDonationRequest({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SortingItem(
          hintText: 'أختر فصيلة الدم',
          bloodTypeList: kBloodTypeList,
        ),
        const Spacer(),
        SortingItem(
          bloodTypeList: kEgyptGovernorates,
          hintText: 'اختار المحافظة',
        ),
      ],
    );
  }
}
