import 'package:blood_donation/core/router/routes.dart';
import 'package:blood_donation/core/widgets/custom_button.dart';
import 'package:blood_donation/core/widgets/custom_text_filed.dart';
import 'package:blood_donation/feature/login/presentation/views/widgets/login_options.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginDetails extends StatelessWidget {
  const LoginDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: CustomTextFormField(
            hintText: 'الجوال',
            keyboardType: TextInputType.phone,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: CustomTextFormField(
            hintText: 'كلمة المرور',
            keyboardType: TextInputType.visiblePassword,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: LoginOptions(),
        ),
        const SizedBox(
          height: 30,
        ),
        CustomButton(
          text: 'دخول',
          onPressed: () {
            GoRouter.of(context).pushReplacement(Routes.kHomeView);
          },
        ),
      ],
    );
  }
}
