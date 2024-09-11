import 'package:blood_donation/core/theaming/text_styles.dart';
import 'package:flutter/material.dart';

class NoNotificationBody extends StatelessWidget {
  const NoNotificationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return NotificationItem();
      },
    );
  }
}

class NotificationItem extends StatelessWidget {
  const NotificationItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        leading: const Icon(Icons.notifications),
        title: Text(
          'تنبيه بخصوص طلبك',
          style: TextStyles.textStyle24.copyWith(fontWeight: FontWeight.bold),
        ),
        trailing: SizedBox(
          width: 115,
          child: Row(
            children: [
              const Icon(Icons.av_timer_outlined),
              Spacer(),
              Text(
                '19/9/2024',
                style: TextStyles.textStyle20
                    .copyWith(color: Colors.red, fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
