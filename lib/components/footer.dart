import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/font_family.dart';
import 'package:my_portfolio/utils/social.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const SocialRow(),
          const SizedBox(height: 10,),
          Text('N I T H I N . M ',style: TextStyle(
            color: Colors.black, fontSize: 25, fontWeight: FontWeight.w800,
            fontFamily: PFontFamily.sf_ui_display,
          ))
        ],
      ),
    );
  }
}
