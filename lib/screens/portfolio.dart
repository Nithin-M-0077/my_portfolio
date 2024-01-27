import 'package:flutter/material.dart';
import 'package:my_portfolio/components/about.dart';
import 'package:my_portfolio/components/certifications.dart';
import 'package:my_portfolio/components/education.dart';
import 'package:my_portfolio/components/experiences.dart';
import 'package:my_portfolio/components/footer.dart';
import 'package:my_portfolio/components/interest_and_language.dart';
import 'package:my_portfolio/components/projects.dart';
import 'package:my_portfolio/components/skills.dart';
import 'package:my_portfolio/utils/font_family.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  List<Widget> navItems = [];

  bool isMobile = false;

  final skillKey = GlobalKey();
  final expKey = GlobalKey();
  final certKey = GlobalKey();
  final prgtKey = GlobalKey();
  final intlangKey = GlobalKey();
  final eduKey = GlobalKey();

  @override
  void initState() {
    navItems = [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
            onPressed: () {
              Scrollable.ensureVisible(eduKey.currentContext!);
            },
            child: Text(
              'Education',
              style: TextStyle(
                color: Colors.red,
                fontSize: 15,
                fontWeight: FontWeight.w700,
                fontFamily: PFontFamily.sf_ui_display,
                letterSpacing: 0.205,
              ),
            )),
      ),

      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
            onPressed: () {
              Scrollable.ensureVisible(skillKey.currentContext!);
            },
            child: Text(

              'Skills',
              style: TextStyle(
                color: Colors.red,
                fontSize: 15,
                fontWeight: FontWeight.w700,
                fontFamily: PFontFamily.sf_ui_display,
                letterSpacing: 0.205,
              ),
            )),
      ),

      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
            onPressed: () {
              Scrollable.ensureVisible(prgtKey.currentContext!);
            },
            child: Text(
              'Projects',
              style: TextStyle(
                color: Colors.red,
                fontSize: 15,
                fontWeight: FontWeight.w700,
                fontFamily: PFontFamily.sf_ui_display,
                letterSpacing: 0.205,
              ),
            )),
      ),

      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
            onPressed: () {
              Scrollable.ensureVisible(expKey.currentContext!);
            },
            child: Text(
              'Experiences',
              style: TextStyle(
                color: Colors.red,
                fontSize: 15,
                fontWeight: FontWeight.w700,
                fontFamily: PFontFamily.sf_ui_display,
                letterSpacing: 0.205,
              ),
            )),
      ),

      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
            onPressed: () {
              Scrollable.ensureVisible(certKey.currentContext!);
            },
            child: Text(
              'Certifications',
              style: TextStyle(
                color: Colors.red,
                fontSize: 15,
                fontWeight: FontWeight.w700,
                fontFamily: PFontFamily.sf_ui_display,
                letterSpacing: 0.205,
              ),
            )),
      ),
    ];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    isMobile = MediaQuery.of(context).size.width > 700 ? false : true;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'portfolio',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700, fontFamily: PFontFamily.sf_ui_display, letterSpacing: 0.205,),),
          actions: isMobile ? null : navItems,
        ),
        drawer: isMobile
            ? Drawer(
                child: ListView(
                  children: [
                    ...navItems,
                  ],
                ),
              )
            : null,
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(

                      image: NetworkImage('https://uploads-ssl.webflow.com/609ccf5d994ce7740cc92684/64c3b3fbcf510ce29a9d4cde_Optimizing%20Flutter%20Performance_%20Tips%20and%20Best%20Practices.png'), fit: BoxFit.cover),
              ),
              child: Column(
                children: [
                  Wrap(
                    spacing: 25,
                    alignment: WrapAlignment.center,
                    children: [
                      const About(),
                      Education(key: eduKey,),
                    ],
                  ),
                  Skills(key: skillKey,),
                   Experiences(key: expKey),
                   Certifications(key: certKey,),
                   Projects(key: prgtKey,),
                  InterestandLanguage(key: intlangKey),
                  const Footer(),
                ],
              ),
            ),
          ),
        ));
  }
}
