import 'package:blood_donation/core/helpers/consts.dart';
import 'package:blood_donation/core/helpers/cashe_helper.dart';
import 'package:blood_donation/core/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

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
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ar'),
      ],
      locale: const Locale('ar'),
      theme: ThemeData(
        primaryColor: kPrimaryColor,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
