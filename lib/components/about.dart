import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/utils/animated_contact.dart';
import 'package:my_portfolio/utils/font_family.dart';
import 'package:my_portfolio/utils/social.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(top: 20),
      width: screenWidth < 900 ? screenWidth * 0.9 : screenWidth < 1600 ? screenWidth * 0.3:screenWidth * 0.2,
      decoration: BoxDecoration(color: const Color(0xff253342),borderRadius: BorderRadius.circular(20),),
      padding: const EdgeInsets.all(30),
      height: 950.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Image.network("https://cdn.pixabay.com/photo/2017/11/10/05/48/user-2935527_640.png", height: 150,fit: BoxFit.cover,),
              const SizedBox(height: 10,),
              Text(
                'NITHIN M',
                style: TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.w700, fontFamily: PFontFamily.sf_ui_display, letterSpacing: 0.305,),),
              Padding(
                padding: const EdgeInsets.symmetric(vertical:8 ),
                child: Text(
                  'To Work in a Challenging Position with an Organization that Provides Ample Opportunities to Learn and Contribute.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w800, fontFamily: PFontFamily.sf_ui_display,),),
              ),
              const SizedBox(height: 10,),
               Wrap(
                alignment: WrapAlignment.center,
                spacing: 8.0,
                runSpacing: 8,
                children: [
                  Chip(
                    label: const Text('Flutter Developer'),
                    labelStyle: TextStyle(
                      color: Colors.white,fontSize: 13,
                      fontWeight: FontWeight.w800,
                      fontFamily: PFontFamily.sf_ui_display,
                    ),
                    backgroundColor: Colors.green,
                    padding: const EdgeInsets.all(8),
                  ),
                  Chip(
                    label: const Text('Software Developer'),
                    labelStyle: TextStyle(
                      color: Colors.white,fontSize: 13,
                      fontWeight: FontWeight.w800,
                      fontFamily: PFontFamily.sf_ui_display,
                    ),
                    backgroundColor: Colors.green,
                    padding: const EdgeInsets.all(8),
                  ),
                ],
              ),
              const Divider(),
              AnimatedContact(
                  iconData: Icons.mail,
                  title: "Email",
                  subtitle: "nithznithi2001@gmail.com",
                  onTap: () {}
              ),
              AnimatedContact(
                iconData: FontAwesomeIcons.github,
                title: "GitHub",
                subtitle: "https://github.com/Nithin-M-0077",
                onTap: () async {
                  final url = Uri.parse("https://github.com/Nithin-M-0077");
                  if (await canLaunchUrl(url)){
                    await launchUrl(url);
                  }
                }
              ),

              AnimatedContact(iconData: FontAwesomeIcons.linkedin,title: "Linkedin",subtitle: "https://www.linkedin.com/in/nithin-murali-3262b325a/",onTap: () async {
                final url = Uri.parse("https://www.linkedin.com/in/nithin-murali-3262b325a");
                if (await canLaunchUrl(url)){
                  await launchUrl(url);
                }
              },),
              AnimatedContact(
                  iconData: FontAwesomeIcons.phone,
                  title: "Phone",
                  subtitle: "9072545436 / 7306516344 ",
                  onTap: () {}
              ),
              AnimatedContact(
                  iconData: FontAwesomeIcons.locationDot,
                  title: "Address",
                  subtitle: "Kerala , India",
                  onTap: () {}
              ),
            ],
          ),
          const Column(
            children: [
              Divider(),
              SocialRow(),
            ],
          ),

        ],
      ),
    );
  }
}


