import 'package:blood_donation/core/helpers/consts.dart';
import 'package:flutter/material.dart';

class ArticleTitle extends StatelessWidget {
  const ArticleTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
        contentPadding: const EdgeInsets.all(0),
        title: const Center(
          child: Text(
            'طرق الوقاية',
            style: TextStyle(
              fontSize: 24,
              color: kPrimaryColor,
            ),
          ),
        ),
        trailing: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite,
              color: Colors.red,
            )));
  }
}
