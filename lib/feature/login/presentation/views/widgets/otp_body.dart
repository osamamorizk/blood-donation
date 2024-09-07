import 'package:blood_donation/core/router/routes.dart';
import 'package:blood_donation/core/widgets/custom_button.dart';
import 'package:blood_donation/core/widgets/custom_text_filed.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OtpBody extends StatefulWidget {
  const OtpBody({super.key});

  @override
  State<OtpBody> createState() => _OtpBodyState();
}

class _OtpBodyState extends State<OtpBody> {
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage('assets/images/icon.png'),
            ),
            const CustomTextFormField(
                keyboardType: TextInputType.phone,
                prefixIcon: Icon(Icons.phone_enabled_outlined),
                hintText: 'الجوال'),
            const SizedBox(
              height: 60,
            ),
            CustomButton(
              text: 'ارسال',
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  GoRouter.of(context).push(Routes.kVerification);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
