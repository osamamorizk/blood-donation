import 'package:blood_donation/feature/register/presentation/views/widgets/choose_widget.dart';
import 'package:flutter/material.dart';

class HomeInfo extends StatelessWidget {
  const HomeInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ChooseWidget(hintText: 'المحافظة', icon: Icons.home, chooseType: []),
        SizedBox(
          height: 15,
        ),
        ChooseWidget(hintText: 'المدينة', icon: Icons.home, chooseType: []),
      ],
    );
  }
}
