import 'package:blood_donation/core/router/routes.dart';
import 'package:blood_donation/core/widgets/custom_button.dart';
import 'package:blood_donation/feature/register/presentation/views/widgets/blood_info.dart';
import 'package:blood_donation/feature/register/presentation/views/widgets/home_info.dart';
import 'package:blood_donation/feature/register/presentation/views/widgets/security_info.dart';
import 'package:blood_donation/feature/register/presentation/views/widgets/user_basic_info.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterViewBody extends StatefulWidget {
  const RegisterViewBody({super.key});

  @override
  State<RegisterViewBody> createState() => _RegisterViewBodyState();
}

class _RegisterViewBodyState extends State<RegisterViewBody> {
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                const UserBasicInfo(),
                const SizedBox(
                  height: 15,
                ),
                const BloodInfo(),
                const SizedBox(
                  height: 15,
                ),
                const HomeInfo(),
                const SizedBox(
                  height: 15,
                ),
                const SecurityInfo(),
                const SizedBox(
                  height: 15,
                ),
                CustomButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        GoRouter.of(context).pushReplacement(Routes.kHomeView);
                      }
                    },
                    text: 'تسجيل')
              ],
            ),
          )),
    );
  }
}
