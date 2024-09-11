import 'package:blood_donation/core/helpers/consts.dart';
import 'package:blood_donation/core/theaming/text_styles.dart';
import 'package:flutter/material.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 15,
        ),
        Text(
          'الجوال',
          style: TextStyles.textStyle24.copyWith(
            color: Colors.black,
            fontSize: 28,
          ),
        ),
        ListTile(
          contentPadding: const EdgeInsets.all(0),
          leading: const Icon(
            Icons.phone_enabled,
            color: kPrimaryColor,
          ),
          title: Text(
            '01015198147',
            style: TextStyles.textStyle24.copyWith(
              color: kPrimaryColor,
              fontSize: 22,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        const Divider(
          thickness: .5,
        ),
        Text(
          'البريد الالكتروني',
          style: TextStyles.textStyle24.copyWith(
            color: Colors.black,
            fontSize: 28,
          ),
        ),
        ListTile(
          contentPadding: const EdgeInsets.all(0),
          leading: const Icon(
            Icons.email,
            color: kPrimaryColor,
          ),
          title: Text(
            'osama@gmail.com',
            style: TextStyles.textStyle24.copyWith(
              color: kPrimaryColor,
              fontWeight: FontWeight.normal,
              fontSize: 22,
            ),
          ),
        ),
        const Divider(
          thickness: .5,
        ),
      ],
    );
  }
}
