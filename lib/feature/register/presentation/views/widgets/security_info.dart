import 'package:blood_donation/core/widgets/custom_text_filed.dart';
import 'package:flutter/material.dart';

class SecurityInfo extends StatelessWidget {
  const SecurityInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomTextFormField(
          hintText: 'رقم الهاتف',
          prefixIcon: Icon(Icons.phone_enabled_outlined),
        ),
        SizedBox(
          height: 15,
        ),
        CustomTextFormField(
          hintText: 'كلمة المرور',
          prefixIcon: Icon(Icons.lock),
        ),
        SizedBox(
          height: 15,
        ),
        CustomTextFormField(
          hintText: 'تأكيد كلمة المرور',
          prefixIcon: Icon(Icons.lock),
        ),
      ],
    );
  }
}
