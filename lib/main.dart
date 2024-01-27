import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/screens/portfolio.dart';
import 'package:my_portfolio/utils/font_family.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Portfolio',
      theme: ThemeData(
        canvasColor: const Color(0xff212121),
        useMaterial3: true
      ),
      home: AnimatedSplashScreen(
        nextScreen: const Portfolio(),
        splash: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Hey',style:  TextStyle(
                  color: Colors.white,fontSize: 30,
                  fontWeight: FontWeight.w800,
                  fontFamily: PFontFamily.sf_ui_display,
                ),
                ),
                const SizedBox(width: 10,),
                Text('Nithin.',style:  TextStyle(
                  color: Colors.white,fontSize: 45,
                  fontWeight: FontWeight.w900,
                  fontFamily: PFontFamily.sf_ui_display,
                  letterSpacing: 0.35
                ),)
              ],
            ),
            Text('check out your portfolio.',
              style:  TextStyle(
              color: Colors.white,fontSize: 15,
              fontWeight: FontWeight.w900,
              fontFamily: PFontFamily.sf_ui_display,
            ),)
          ],
        ),
        duration: 3000,
        backgroundColor: const Color(0xff253342),
        splashTransition: SplashTransition.decoratedBoxTransition,
      ),
    );
  }
}


