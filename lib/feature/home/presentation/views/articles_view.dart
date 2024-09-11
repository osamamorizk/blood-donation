import 'package:blood_donation/core/widgets/custom_text_filed.dart';
import 'package:blood_donation/feature/home/presentation/views/widgets/article_item.dart';
import 'package:flutter/material.dart';

class ArticlesView extends StatelessWidget {
  const ArticlesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          CustomTextFormField(
            filled: true,
            // prefixIcon: Row(
            //   mainAxisSize: MainAxisSize.min,
            //   children: [SizedBox(width: 50, child: Example())],
            // ),
            suffixIcon: const Icon(Icons.search),
            fillColor: Colors.grey.withOpacity(.15),
            hintText: 'ادخل كلمة البحث هنا',
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return const ArticleItem();
              },
            ),
          ),
        ],
      ),
    );
  }
}
