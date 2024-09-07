import 'package:blood_donation/core/widgets/custom_button.dart';
import 'package:blood_donation/core/widgets/custom_text_filed.dart';
import 'package:blood_donation/feature/login/presentation/views/widgets/dont_have_account.dart';
import 'package:blood_donation/feature/login/presentation/views/widgets/login_options.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Spacer(
            //   flex: 1,
            // ),
            SizedBox(
              height: 60,
            ),
            Image(
              image: AssetImage('assets/images/icon.png'),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: CustomTextFormField(
                hintText: 'الجوال',
                keyboardType: TextInputType.phone,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: CustomTextFormField(
                hintText: 'كلمة المرور',
                keyboardType: TextInputType.visiblePassword,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: LoginOptions(),
            ),
            SizedBox(
              height: 30,
            ),
            CustomButton(text: 'دخول'),
            SizedBox(
              height: 90,
            ),
            DontHaveAccount(),
          ],
        ),
      ),
    );
  }
}
