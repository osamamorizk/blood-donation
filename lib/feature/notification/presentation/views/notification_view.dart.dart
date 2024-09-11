import 'package:blood_donation/core/helpers/consts.dart';
import 'package:blood_donation/feature/notification/presentation/views/widgets/no_notification_body.dart';
import 'package:blood_donation/feature/notification/presentation/views/widgets/notification_body.dart';
import 'package:flutter/material.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        title: const Text(
          '  التنبيهات',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
          ),
        ),
        backgroundColor: kPrimaryColor,
      ),
      body: const NoNotificationBody(),
    );
  }
}
