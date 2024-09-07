import 'package:blood_donation/core/widgets/custom_button.dart';
import 'package:blood_donation/core/widgets/custom_text_filed.dart';
import 'package:flutter/material.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height,
          minWidth: MediaQuery.of(context).size.width,
        ),
        child: const IntrinsicHeight(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomTextFormField(
                  hintText: 'الاسم',
                  prefixIcon: Icon(Icons.person),
                ),
                CustomTextFormField(
                  hintText: 'البريد الالكتروني',
                  prefixIcon: Icon(Icons.email_rounded),
                ),
                CustomTextFormField(
                  hintText: 'تاريخ الميلاد',
                  prefixIcon: Icon(Icons.calendar_month_sharp),
                ),
                CustomTextFormField(
                  hintText: 'فصيلة الدم',
                  prefixIcon: Icon(Icons.bloodtype_rounded),
                ),
                CustomTextFormField(
                  hintText: 'اخر تاريخ للتبرع',
                  prefixIcon: Icon(Icons.calendar_month_sharp),
                ),
                //
                CustomTextFormField(
                  hintText: 'المحافظة',
                  prefixIcon: Icon(Icons.home_outlined),
                ),
                CustomTextFormField(
                  hintText: 'المدينة',
                  prefixIcon: Icon(Icons.home_outlined),
                ),
                CustomTextFormField(
                  hintText: 'رقم الهاتف',
                  prefixIcon: Icon(Icons.person),
                ),
                CustomTextFormField(
                  hintText: 'كلمة المرور',
                  prefixIcon: Icon(Icons.lock),
                ),
                CustomTextFormField(
                  hintText: 'تأكيد كلمة المرور',
                  prefixIcon: Icon(Icons.lock),
                ),

                CustomButton(text: 'تسجيل')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
//      DropdownButton<String>(
//   items: <String>['A', 'B', 'C', 'D'].map((String value) {
//     return DropdownMenuItem<String>(
//       value: value,
//       child: Text(value),
//     );
//   }).toList(),
//   onChanged: (_) {},
// )