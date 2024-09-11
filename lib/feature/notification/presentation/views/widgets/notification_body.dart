import 'package:blood_donation/core/router/routes.dart';
import 'package:blood_donation/core/theaming/text_styles.dart';
import 'package:blood_donation/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NotificationBody extends StatelessWidget {
  const NotificationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          const Image(
            height: 250,
            image: AssetImage('assets/images/bell.png'),
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            textAlign: TextAlign.center,
            'لا يوجد اشعارات الأن\nمن فضلك انقذ البشرية بالتبرع بالدم الأن',
            style: TextStyles.textStyle24
                .copyWith(fontWeight: FontWeight.w800, fontSize: 30),
          ),
          const SizedBox(
            height: 40,
          ),
          // CustomButton(
          //   onPressed: () {
          //     GoRouter.of(context).push(Routes.kBloodDonation);
          //   },
          //   text: 'تبرع',
          //   backgroundColor: WidgetStateProperty.all<Color>(
          //     const Color(0xffE14C67),
          //   ),
          // ),
        ],
      ),
    );
  }
}
