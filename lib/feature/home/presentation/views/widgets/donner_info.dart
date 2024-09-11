import 'package:blood_donation/core/helpers/consts.dart';
import 'package:flutter/material.dart';

class DonnerInfo extends StatelessWidget {
  const DonnerInfo({
    super.key,
  });
  final String name = 'ابراهيم الشحات';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      // width: 260,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: 260,
            height: 75,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(50),
                bottomLeft: Radius.circular(50),
                topRight: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 0,
                  blurRadius: 3,
                  offset: const Offset(4, 2),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'اسم الحاله :  $name',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const Text(
                  'المستشفي : شربين',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const Text(
                  'المدينة: شربين',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          const Positioned(
            right: -20,
            child: CircleAvatar(
              radius: 40,
              backgroundColor: kPrimaryColor,
              child: Align(
                child: Text(
                  'A',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 38,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
