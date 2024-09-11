import 'package:blood_donation/core/helpers/consts.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DonnerActions extends StatelessWidget {
  const DonnerActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          child: const CircleAvatar(
              radius: 17,
              backgroundColor: kPrimaryColor,
              child: Icon(
                Icons.priority_high,
                color: Colors.white,
              )),
        ),
        const SizedBox(
          width: 10,
        ),
        GestureDetector(
          onTap: () async {
            phoneLuncher();
          },
          child: const CircleAvatar(
            radius: 17,
            backgroundColor: Colors.lightGreen,
            child: Icon(
              Icons.call,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

const phoneNumber = 'tel:+1555010999';
final Uri phoneUri = Uri.parse(phoneNumber);

Future<void> phoneLuncher() async {
  if (!await launchUrl(phoneUri)) {
    throw Exception('Could not launch $phoneNumber');
  }
}
