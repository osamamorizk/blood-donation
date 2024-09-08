import 'package:blood_donation/core/helpers/consts.dart';
import 'package:flutter/material.dart';

class DonnerActions extends StatelessWidget {
  const DonnerActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CircleAvatar(
            radius: 17,
            backgroundColor: kPrimaryColor,
            child: Icon(
              Icons.priority_high,
              color: Colors.white,
            )),
        SizedBox(
          width: 3,
        ),
        CircleAvatar(
          radius: 17,
          backgroundColor: Colors.lightGreen,
          child: Icon(
            Icons.call,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
