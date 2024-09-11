import 'package:blood_donation/core/helpers/consts.dart';
import 'package:blood_donation/core/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ArticleItem extends StatelessWidget {
  const ArticleItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(Routes.kArticleDetails);
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Stack(
            children: [
              Image(
                width: MediaQuery.of(context).size.width,
                height: 200,
                fit: BoxFit.fill,
                image: const AssetImage('assets/images/test_article.png'),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: kPrimaryColor.withOpacity(.7),
                  ),
                  child: const Center(
                      child: Text(
                    'طرق الوقاية من الامراض',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
                ),
              ),
              Positioned(
                top: 5,
                left: 5,
                child: IconButton(
                  onPressed: () {},
                  icon: const CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.white,
                    child: Icon(
                      size: 24,
                      Icons.favorite_border_outlined,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
