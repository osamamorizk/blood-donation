import 'dart:developer';

import 'package:blood_donation/consts.dart';
import 'package:blood_donation/core/router/routes.dart';
import 'package:blood_donation/core/theaming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginOptions extends StatelessWidget {
  const LoginOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const RememberOptions(),
        const Spacer(),
        TextButton(
          onPressed: () {
            GoRouter.of(context).push(Routes.kOtpView);
          },
          child: Text(
            'هل نسيت كلمه المرور ؟',
            style: TextStyles.textStyle16.copyWith(
              color: kPrimaryColor,
            ),
          ),
        ),
      ],
    );
  }
}

class RememberOptions extends StatefulWidget {
  const RememberOptions({
    super.key,
  });

  @override
  State<RememberOptions> createState() => _RememberOptionsState();
}

class _RememberOptionsState extends State<RememberOptions> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('تذكرني ', style: TextStyles.textStyle16),
        SizedBox(
          height: 20,
          width: 25,
          child: Checkbox(
            value: isChecked,
            onChanged: (bool? newValue) {
              isChecked = newValue!;
              log(isChecked.toString());
              setState(() {});
            },
          ),
        )
      ],
    );
  }
}
