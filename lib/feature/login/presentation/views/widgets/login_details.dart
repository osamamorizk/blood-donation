import 'package:blood_donation/core/router/routes.dart';
import 'package:blood_donation/core/widgets/custom_button.dart';
import 'package:blood_donation/core/widgets/custom_text_filed.dart';
import 'package:blood_donation/feature/login/presentation/views/widgets/login_options.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginDetails extends StatefulWidget {
  const LoginDetails({
    super.key,
  });

  @override
  State<LoginDetails> createState() => _LoginDetailsState();
}

class _LoginDetailsState extends State<LoginDetails> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: CustomTextFormField(
              prefixIcon: Icon(Icons.phone_enabled_outlined),
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
              prefixIcon: Icon(Icons.lock_outline),
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
              if (formKey.currentState!.validate()) {
                GoRouter.of(context).pushReplacement(Routes.kHomeView);
              }
            },
          ),
        ],
      ),
    );
  }
}
