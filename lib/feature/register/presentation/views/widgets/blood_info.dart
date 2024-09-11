import 'package:blood_donation/core/helpers/consts.dart';
import 'package:blood_donation/core/widgets/custom_text_filed.dart';
import 'package:blood_donation/core/widgets/choose_widget.dart';
import 'package:flutter/material.dart';

class BloodInfo extends StatelessWidget {
  const BloodInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ChooseWidget(
            hintText: 'فصيلة الدم',
            icon: Icons.bloodtype,
            chooseType: kBloodTypeList),
        const SizedBox(
          height: 15,
        ),
        const CustomTextFormField(
          hintText: 'اخر تاريخ للتبرع',
          prefixIcon: Icon(Icons.calendar_month_sharp),
        ),
      ],
    );
  }
}
