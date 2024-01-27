import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/utils/animated_icon_button.dart';

class SocialRow extends StatelessWidget {
  const SocialRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedIconButton(iconData: FontAwesomeIcons.facebook, onTap: (){}),
        SizedBox(width: 8,),
        AnimatedIconButton(iconData: FontAwesomeIcons.instagram, onTap: (){}),
        SizedBox(width: 8,),
        AnimatedIconButton(iconData: FontAwesomeIcons.twitter, onTap: (){}),
      ],
    );
  }
}
