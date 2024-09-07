import 'package:blood_donation/consts.dart';
import 'package:blood_donation/core/helpers/cashe_helper.dart';
import 'package:blood_donation/feature/auth/presentation/views/login_view.dart';
import 'package:blood_donation/feature/onboarding/presentation/views/onboarding.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await CasheHelper.cacheIntialization();
  onboarding = CasheHelper.getData(key: 'onboarding') ?? false;
  runApp(const BloodDonation());
}

class BloodDonation extends StatelessWidget {
  const BloodDonation({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: const Locale('ar'),
      debugShowCheckedModeBanner: false,
      home: onboarding ? const LoginView() : const Onboarding(),
    );
  }
}
