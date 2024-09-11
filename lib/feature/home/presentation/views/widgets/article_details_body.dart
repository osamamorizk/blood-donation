import 'package:blood_donation/feature/home/presentation/views/widgets/article_title.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ArticleDetailsBody extends StatelessWidget {
  const ArticleDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            const Image(
              fit: BoxFit.fill,
              height: 280,
              image: AssetImage('assets/images/test_article.png'),
            ),
            Positioned(
              top: 250,
              left: 0,
              right: 0,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xffF9F9F9),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(32),
                    topLeft: Radius.circular(32),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      ArticleTitle(),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        'الوقاية هي المفتاح للحفاظ على الصحة والرفاهية. من خلال اتباع تدابير الوقاية، يمكن تقليل خطر الإصابة بالأمراض والمشاكل الصحية. من أهم أسس الوقاية الحفاظ على نظافة الجسم والبيئة، واتباع نظام غذائي متوازن يحتوي على العناصر الغذائية الضرورية، وممارسة النشاط البدني بانتظام./n الوقاية هي المفتاح للحفاظ على الصحة والرفاهية. من خلال اتباع تدابير الوقاية، يمكن تقليل خطر الإصابة بالأمراض والمشاكل الصحية. من أهم أسس الوقاية الحفاظ على نظافة الجسم والبيئة، واتباع نظام غذائي متوازن يحتوي على العناصر الغذائية الضرورية، وممارسة النشاط البدني بانتظام.',
                        style: TextStyle(fontSize: 22),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 1,
              child: IconButton(
                  onPressed: () {
                    GoRouter.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 28,
                  )),
            )
          ],
        ),
      ],
    );
  }
}
