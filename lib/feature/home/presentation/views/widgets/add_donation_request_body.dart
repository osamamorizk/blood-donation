import 'package:blood_donation/core/helpers/consts.dart';
import 'package:blood_donation/core/widgets/choose_widget.dart';
import 'package:blood_donation/core/widgets/custom_button.dart';
import 'package:blood_donation/core/widgets/custom_text_filed.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AddDonationRequestBody extends StatelessWidget {
  const AddDonationRequestBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            const CustomTextFormField(
              hintText: 'الاسم',
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomTextFormField(
              hintText: 'العمر',
            ),
            const SizedBox(
              height: 20,
            ),
            const ChooseWidget(chooseType: [], hintText: 'فصيلة الدم'),
            const SizedBox(
              height: 20,
            ),
            const CustomTextFormField(
              keyboardType: TextInputType.number,
              hintText: 'عدد الاكياس',
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomTextFormField(
              hintText: 'عنوان المستشفي',
            ),
            const SizedBox(
              height: 20,
            ),
            ChooseWidget(
              chooseType: kEgyptGovernorates,
              hintText: 'المحافظة',
            ),
            const SizedBox(
              height: 20,
            ),
            ChooseWidget(
              chooseType: kEgyptGovernorates,
              hintText: 'المدينة',
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomTextFormField(
              hintText: 'رقم الهاتف',
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomTextFormField(
              maxLines: 4,
              hintText: 'ملاحظات',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              text: 'ارسال',
              onPressed: () {
                GoRouter.of(context).pop();
              },
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
