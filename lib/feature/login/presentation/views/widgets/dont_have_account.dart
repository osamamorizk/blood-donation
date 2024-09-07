import 'package:flutter/material.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.red),
      height: 45,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('لا تمتلك حساب؟  ',
              style: TextStyle(color: Colors.white, fontSize: 18)),
          TextButton(
            style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                alignment: Alignment.centerRight),
            onPressed: () {},
            child: const Text(
              'يمكنك التسجيل من هنا',
              style: TextStyle(color: Colors.white, fontSize: 19),
            ),
          )
        ],
      ),
    );
  }
}
