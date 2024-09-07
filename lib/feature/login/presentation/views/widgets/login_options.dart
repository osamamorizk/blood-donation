import 'dart:developer';

import 'package:blood_donation/core/theaming/text_styles.dart';
import 'package:flutter/material.dart';

class LoginOptions extends StatelessWidget {
  const LoginOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RememberOptions(),
        const Spacer(),
        TextButton(
          onPressed: () {},
          child: Text(
            'هل نسيت كلمه المرور ؟',
            style: TextStyles.textStyle16.copyWith(
              color: Colors.red,
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
        Checkbox(
          value: isChecked,
          onChanged: (bool? newValue) {
            isChecked = newValue!;
            log(isChecked.toString());
            setState(() {});
          },
        )
      ],
    );
  }
}
