import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/font_family.dart';
import 'package:velocity_x/velocity_x.dart';

class Skills extends StatelessWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  Widget skillchip(String text){
    return Chip(
      label: Text(text,style: const TextStyle(fontWeight: FontWeight.w900,fontSize: 12),),
      labelStyle: const TextStyle(color: Colors.black),side: const BorderSide(color: Color(0xffCAe7d3),width: 4),
      backgroundColor: Colors.white,
    );
  }
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20,
      runSpacing: 20,
      alignment: WrapAlignment.center,
      children: [
        Container(
         padding: const EdgeInsets.symmetric(vertical: 20),
          alignment: Alignment.center,
          child: Text('- Skills', style: TextStyle(
            color: Colors.white, fontSize: 25, fontWeight: FontWeight.w800,
            fontFamily: PFontFamily.sf_ui_display,
          ),),
        ),
        Container(
          width: context.screenWidth < 900 ? context.screenWidth*0.9:((context.screenWidth*0.8)/3),
          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(25)),
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Programming Languages",
                style: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.w800,
                fontFamily: PFontFamily.sf_ui_display,
              ),),
              const Divider(),
             Wrap(
               spacing: 8,
               runSpacing: 8,
               children: [
                skillchip('C Programming'),
                skillchip('C++'),
                skillchip('Dart'),
                skillchip('Html/Css'),
                skillchip('MySQL'),
                skillchip('Python'),
                skillchip('Java'),
               ],
             )
            ],

          ),

        ),
        Container(
          width: context.screenWidth < 900 ? context.screenWidth*0.9:((context.screenWidth*0.8)/3),
          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(25)),
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Frameworks",
                style: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.w800,
                fontFamily: PFontFamily.sf_ui_display,
              ),),
              const Divider(),
              skillchip('Flutter'),
            ],

          ),

        ),
        Container(
          width: context.screenWidth < 900 ? context.screenWidth*0.9:((context.screenWidth*0.8)/3),
          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(25)),
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Tools", style: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.w800,
                fontFamily: PFontFamily.sf_ui_display,
              ),),
              const Divider(),
             Wrap(
               spacing: 8,
               runSpacing: 8,
               children: [
                 skillchip('Android Studio'),
                 skillchip('Visual Studio Code'),
               ],
             ),

            ],

          ),

        ),
        Container(
          width: context.screenWidth < 900 ? context.screenWidth*0.9:((context.screenWidth*0.8)/3),
          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(25)),
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Other Skills", style: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.w800,
                fontFamily: PFontFamily.sf_ui_display,
              ),),
              const Divider(),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  skillchip('Ui Development'),
                  skillchip('Statemanagement'),
                  skillchip('Api Integration'),
                  skillchip('Data Entry'),
                ],
              ),

            ],

          ),

        ),

      ],
    );
  }
}
