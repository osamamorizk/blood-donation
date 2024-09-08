import 'package:blood_donation/core/widgets/custom_button.dart';
import 'package:blood_donation/feature/register/presentation/views/widgets/blood_info.dart';
import 'package:blood_donation/feature/register/presentation/views/widgets/home_info.dart';
import 'package:blood_donation/feature/register/presentation/views/widgets/security_info.dart';
import 'package:blood_donation/feature/register/presentation/views/widgets/user_basic_info.dart';
import 'package:flutter/material.dart';

class RegisterViewBody extends StatefulWidget {
  const RegisterViewBody({super.key});

  @override
  State<RegisterViewBody> createState() => _RegisterViewBodyState();
}

class _RegisterViewBodyState extends State<RegisterViewBody> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              UserBasicInfo(),
              SizedBox(
                height: 15,
              ),
              BloodInfo(),
              SizedBox(
                height: 15,
              ),
              HomeInfo(),
              SizedBox(
                height: 15,
              ),
              SecurityInfo(),
              SizedBox(
                height: 15,
              ),
              CustomButton(text: 'تسجيل')
            ],
          )),
    );
  }
}
