import 'package:blood_donation/core/theaming/text_styles.dart';
import 'package:flutter/material.dart';

class RequestinfoBody extends StatelessWidget {
  const RequestinfoBody({
    super.key,
  });
  final double thickness = .2;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            InfoItem(infoType: ' الاسم:', info: "ابراهيم اي حاجه"),
            Divider(
              thickness: thickness,
            ),
            InfoItem(infoType: 'العمر :', info: "ابراهيم اي حاجه"),
            Divider(
              thickness: thickness,
            ),
            InfoItem(infoType: 'فصيلة الدم :', info: "ابراهيم اي حاجه"),
            Divider(
              thickness: thickness,
            ),
            InfoItem(
                infoType: 'عدد الاكياس المطلوبة :', info: "ابراهيم اي حاجه"),
            Divider(
              thickness: thickness,
            ),
            InfoItem(infoType: 'المستشفي :', info: "ابراهيم اي حاجه"),
            Divider(
              thickness: thickness,
            ),
            InfoItem(infoType: 'رقم الهاتف :', info: "ابراهيم اي حاجه"),
            Divider(
              thickness: thickness,
            ),
            InfoItem(infoType: 'العنوان :', info: "ابراهيم اي حاجه"),
            Divider(
              thickness: thickness,
            ),
            InfoItem(infoType: ' ملاحاظات :', info: "ابراهيم اي حاجه"),
            Divider(
              thickness: thickness,
            ),
          ],
        ),
      ),
    );
  }
}

class InfoItem extends StatelessWidget {
  const InfoItem({super.key, required this.infoType, required this.info});
  final String infoType;
  final String info;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        infoType,
        style: TextStyles.textStyle24,
      ),
      title: Text(
        info,
        style: TextStyles.textStyle24,
      ),
    );
  }
}
