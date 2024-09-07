import 'package:blood_donation/consts.dart';
import 'package:blood_donation/core/helpers/cashe_helper.dart';
import 'package:blood_donation/core/router/routes.dart';
import 'package:blood_donation/core/theaming/text_styles.dart';
import 'package:blood_donation/feature/login/presentation/views/login_view.dart';
import 'package:blood_donation/feature/onboarding/presentation/views/widgets/custom_action_button.dart';
import 'package:blood_donation/feature/onboarding/presentation/views/widgets/custom_indicator.dart';
import 'package:blood_donation/feature/onboarding/presentation/views/widgets/onboarding_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final controller = PageController();
  bool isLast = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: [
            TextButton(
                onPressed: () async {
                  await CasheHelper.saveData(key: 'onboarding', value: true);
                  GoRouter.of(context).pushReplacement(Routes.kLoginView);
                },
                child: Text(
                  textAlign: TextAlign.right,
                  "تخطي",
                  style: TextStyles.textStyle20,
                ))
          ],
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                    onPageChanged: (int index) {
                      if (index == onboardList.length - 1) {
                        setState(() {
                          isLast = true;
                        });
                      } else {
                        setState(() {
                          isLast = false;
                        });
                      }
                    },
                    controller: controller,
                    itemCount: onboardList.length,
                    itemBuilder: (context, index) {
                      return OnboardingItem(
                          onboardingModel: onboardList[index]);
                    }),
              ),
              const SizedBox(
                height: 100,
              ),
              Row(
                children: [
                  CustomSmoothIndicator(controller: controller),
                  const Spacer(),
                  CustomActionButton(isLast: isLast, controller: controller)
                ],
              ),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}

void submit(context) {}
