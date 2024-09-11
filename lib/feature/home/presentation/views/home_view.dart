import 'package:blood_donation/core/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SizedBox(
        child: BottomNavBar(),
      ),
    );
  }
}
