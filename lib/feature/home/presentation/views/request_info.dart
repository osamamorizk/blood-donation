import 'package:blood_donation/core/helpers/consts.dart';
import 'package:blood_donation/feature/home/presentation/views/widgets/request_info_body.dart';
import 'package:flutter/material.dart';

class RequestInfo extends StatelessWidget {
  const RequestInfo({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        title: const Text(
          'طلب تبرع : الاسم',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
          ),
        ),
        backgroundColor: kPrimaryColor,
      ),
      body: RequestinfoBody(),
    );
  }
}
