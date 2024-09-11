import 'package:blood_donation/core/helpers/consts.dart';
import 'package:blood_donation/core/router/routes.dart';
import 'package:blood_donation/core/theaming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MoreViewBody extends StatelessWidget {
  const MoreViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        PageItem(
          onTap: () {
            GoRouter.of(context).push(Routes.kFavortie);
          },
          text: 'المفضلة',
          icon: Icons.favorite,
        ),
        const Divider(
          thickness: .4,
        ),
        PageItem(
          onTap: () {
            GoRouter.of(context).push(Routes.kContactUs);
          },
          text: 'تواصل معنا',
          icon: Icons.email_outlined,
        ),
        Divider(
          thickness: .4,
        ),
        PageItem(
          text: 'عن التطبيق',
          icon: Icons.lightbulb,
        ),
        Divider(
          thickness: .4,
        ),
        PageItem(
          text: 'تقييم التطبيق علي المتجر',
          icon: Icons.star,
        ),
        Divider(
          thickness: .4,
        ),
        PageItem(
          text: 'اعدادات الاشعارات',
          icon: Icons.settings,
        ),
        Divider(
          thickness: .4,
        ),
        PageItem(
          text: 'تسجيل خروج',
          icon: Icons.logout,
        ),
      ],
    );
  }
}

class PageItem extends StatelessWidget {
  const PageItem(
      {super.key, this.onTap, required this.text, required this.icon});
  final void Function()? onTap;
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ListTile(
        leading: Icon(
          color: kPrimaryColor,
          icon,
          size: 30,
        ),
        title: Text(
          text,
          style: TextStyles.textStyle24.copyWith(fontSize: 28),
        ),
      ),
    );
  }
}
