import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/font_family.dart';
import 'package:velocity_x/velocity_x.dart';

class Certifications extends StatelessWidget {
  const Certifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20,
      runSpacing: 20,
      alignment: WrapAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20),
          alignment: Alignment.center,
          child: Text('- Certifications', style: TextStyle(
            color: Colors.white, fontSize: 25, fontWeight: FontWeight.w800,
            fontFamily: PFontFamily.sf_ui_display,
          ),),
        ),
        Container(
          width: context.screenWidth < 900 ? context.screenWidth*0.9:((context.screenWidth*0.8)/3),
          decoration: BoxDecoration(color: Color(0xff253342),borderRadius: BorderRadius.circular(25)),
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "DART & FLUTTER CERTIFICATION",
                style: TextStyle(
                  color: Colors.white, fontSize: 14, fontWeight: FontWeight.w800,
                  fontFamily: PFontFamily.sf_ui_display,
                ),),
              const Divider(),
              Text('Completed the Certification Program in Google Flutter & Dartoffered by The Digital Adda.', style: TextStyle(
                color: Colors.white, fontSize: 12, fontWeight: FontWeight.w800,
                fontFamily: PFontFamily.sf_ui_display,
              ),)
            ],

          ),

        ),
        Container(
          width: context.screenWidth < 900 ? context.screenWidth*0.9:((context.screenWidth*0.8)/3),
          decoration: BoxDecoration(color:const  Color(0xff253342),borderRadius: BorderRadius.circular(25)),
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("PYTHON CERTIFICATION",
                style: TextStyle(
                  color: Colors.white, fontSize: 14, fontWeight: FontWeight.w800,
                  fontFamily: PFontFamily.sf_ui_display,
                ),),
              const Divider(),
               Text('Certification on Completion Of Basics of Python Programming/Learn by doing Training from OpenWeaver.', style: TextStyle(
                color: Colors.white, fontSize: 12, fontWeight: FontWeight.w800,
                fontFamily: PFontFamily.sf_ui_display,
              ),)
            ],

          ),

        ),
        Container(
          width: context.screenWidth < 900 ? context.screenWidth*0.9:((context.screenWidth*0.8)/3),
          decoration: BoxDecoration(color: const  Color(0xff253342),borderRadius: BorderRadius.circular(25)),
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("JAVASCRIPT CERTIFICATION", style: TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.w800,
                fontFamily: PFontFamily.sf_ui_display,
              ),),
              const Divider(),
              Text('Certification on Completion Of Basics of JavaScript Programming/Learn by doing Training from OpenWeaver.', style: TextStyle(
                color: Colors.white, fontSize: 12, fontWeight: FontWeight.w800,
                fontFamily: PFontFamily.sf_ui_display,
              ),)

            ],

          ),

        ),
        Container(
          width: context.screenWidth < 900 ? context.screenWidth*0.9:((context.screenWidth*0.8)/3),
          decoration: BoxDecoration(color: const  Color(0xff253342),borderRadius: BorderRadius.circular(25)),
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("NIIT CERTIFICATION", style: TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.w800,
                fontFamily: PFontFamily.sf_ui_display,
              ),),
              const Divider(),
              Text('For completion of 2 credit course titled "WORKING WITH MICROSOFT OFFICE " under NSDC.', style: TextStyle(
                color: Colors.white, fontSize: 12, fontWeight: FontWeight.w800,
                fontFamily: PFontFamily.sf_ui_display,
              ),)


            ],

          ),

        ),
        Container(
          width: context.screenWidth < 900 ? context.screenWidth*0.9:((context.screenWidth*0.8)/3),
          decoration: BoxDecoration(color: const  Color(0xff253342),borderRadius: BorderRadius.circular(25)),
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("ASAP CERTIFICATE", style: TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.w800,
                fontFamily: PFontFamily.sf_ui_display,
              ),),
              const Divider(),
              Text('This is to certify that the candidate has taken the BRITISH COUNCILS Aptis test that was conducted under the auspices of the Government of Kerala.', style: TextStyle(
                color: Colors.white, fontSize: 12, fontWeight: FontWeight.w800,
                fontFamily: PFontFamily.sf_ui_display,
              ),)

            ],

          ),

        ),

      ],
    );
  }
}
