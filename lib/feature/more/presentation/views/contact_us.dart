import 'package:blood_donation/core/helpers/consts.dart';
import 'package:blood_donation/core/widgets/custom_button.dart';
import 'package:blood_donation/core/widgets/custom_text_filed.dart';
import 'package:blood_donation/feature/more/presentation/views/widgets/contact_info.dart';
import 'package:blood_donation/feature/more/presentation/views/widgets/socil_media.dart';
import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        title: const Text(
          'تواصل معنا',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: kPrimaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: const [
            ContactInfo(),
            SizedBox(
              height: 20,
            ),
            SocialMedia(),
            CustomTextFormField(hintText: 'عنوان الرساله'),
            SizedBox(
              height: 22,
            ),
            CustomTextFormField(
              hintText: ' نص الرساله',
              maxLines: 4,
            ),
            SizedBox(
              height: 22,
            ),
            CustomButton(text: 'ارسال'),
          ],
        ),
      ),
    );
  }
}
