import 'package:blood_donation/feature/more/presentation/views/widgets/socil_element.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: MediaQuery.of(context).size.width,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              SocilElement(
                iconData: FontAwesomeIcons.twitter,
                iconColor: Colors.white,
                color: Color(0xff1DA1F3),
              ),
              SocilElement(
                iconData: FontAwesomeIcons.youtube,
                iconColor: Colors.white,
                color: Color(0xffE50E0C),
              ),
            ],
          ),
          Column(
            children: [
              SocilElement(
                iconData: FontAwesomeIcons.facebook,
                iconColor: Colors.white,
                color: Color(0xff0889EE),
              ),
              SocilElement(
                iconData: FontAwesomeIcons.instagram,
                iconColor: Colors.white,
                color: Color(0xff7C57B6),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
