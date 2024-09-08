import 'package:blood_donation/core/helpers/cashe_helper.dart';
import 'package:blood_donation/core/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomActionButton extends StatelessWidget {
  const CustomActionButton({
    super.key,
    required this.isLast,
    required this.controller,
  });

  final bool isLast;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32),
      ),
      backgroundColor: Colors.red,
      onPressed: () async {
        if (isLast) {
          GoRouter.of(context).pushReplacement(Routes.kLoginView);
          await CasheHelper.saveData(key: 'onboarding', value: true);
        }
        controller.nextPage(
            duration: const Duration(milliseconds: 500),
            curve: Curves.fastEaseInToSlowEaseOut);
      },
      child: Icon(
        isLast ? Icons.done : Icons.arrow_forward_ios,
        color: Colors.white,
      ),
    );
  }
}
