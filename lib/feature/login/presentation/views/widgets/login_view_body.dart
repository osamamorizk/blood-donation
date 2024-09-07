import 'package:blood_donation/feature/login/presentation/views/widgets/dont_have_account.dart';
import 'package:blood_donation/feature/login/presentation/views/widgets/login_details.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: ConstrainedBox(
            constraints: BoxConstraints(
                minWidth: MediaQuery.of(context).size.width,
                minHeight: MediaQuery.of(context).size.height),
            child: const IntrinsicHeight(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Spacer(
                    flex: 1,
                  ),
                  Image(
                    image: AssetImage('assets/images/icon.png'),
                  ),
                  LoginDetails(),
                  Spacer(
                    flex: 2,
                  ),
                  DontHaveAccount(),
                ],
              ),
            )));
  }
}
