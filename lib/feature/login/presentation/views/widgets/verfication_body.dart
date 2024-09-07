import 'package:blood_donation/core/router/routes.dart';
import 'package:blood_donation/core/widgets/custom_button.dart';
import 'package:blood_donation/core/widgets/custom_text_filed.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class VerficationBody extends StatefulWidget {
  const VerficationBody({super.key});

  @override
  State<VerficationBody> createState() => _VerficationBodyState();
}

class _VerficationBodyState extends State<VerficationBody> {
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              const SizedBox(
                height: 35,
              ),
              const Image(
                image: AssetImage('assets/images/icon.png'),
              ),
              const CustomTextFormField(
                  keyboardType: TextInputType.phone, hintText: 'كود التحقيق'),
              const SizedBox(
                height: 25,
              ),
              const CustomTextFormField(
                  keyboardType: TextInputType.phone,
                  hintText: 'كلمة المرور الجديدة'),
              const SizedBox(
                height: 25,
              ),
              const CustomTextFormField(
                  keyboardType: TextInputType.phone,
                  hintText: 'تأكيد كلمة المرور الجديدة'),
              const SizedBox(
                height: 25,
              ),
              CustomButton(
                text: 'تغيير',
                onPressed: () {
                  // context.go(Routes.kLoginView);
                  if (formKey.currentState!.validate()) {
                    GoRouter.of(context).go(Routes.kLoginView);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
