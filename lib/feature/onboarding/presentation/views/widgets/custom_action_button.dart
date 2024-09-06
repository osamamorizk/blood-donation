import 'package:blood_donation/feature/auth/presentation/views/login_view.dart';
import 'package:flutter/material.dart';

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
      onPressed: () {
        if (isLast) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) {
                return LoginView();
              },
            ),
          );
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
