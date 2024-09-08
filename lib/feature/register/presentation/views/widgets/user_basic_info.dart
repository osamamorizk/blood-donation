import 'package:blood_donation/core/widgets/custom_text_filed.dart';
import 'package:flutter/material.dart';

class UserBasicInfo extends StatelessWidget {
  const UserBasicInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomTextFormField(
          hintText: 'الاسم',
          prefixIcon: Icon(Icons.person),
        ),
        SizedBox(
          height: 20,
        ),
        CustomTextFormField(
          hintText: 'البريد الالكتروني',
          prefixIcon: Icon(Icons.email_rounded),
        ),
        SizedBox(
          height: 20,
        ),
        CustomTextFormField(
          hintText: 'تاريخ الميلاد',
          prefixIcon: Icon(Icons.calendar_month_sharp),
        ),
      ],
    );
  }
}
