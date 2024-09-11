import 'package:blood_donation/core/helpers/consts.dart';
import 'package:blood_donation/core/widgets/article_item.dart';
import 'package:flutter/material.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          centerTitle: true,
          title: const Text(
            'المفضلة',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.w600,
            ),
          ),
          backgroundColor: kPrimaryColor,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return const ArticleItem(
                  iconData: Icons.favorite,
                );
              }),
        ));
  }
}
