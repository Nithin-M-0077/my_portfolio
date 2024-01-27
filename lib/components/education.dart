import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/font_family.dart';
import 'package:timelines/timelines.dart';

class Education extends StatefulWidget {
  const Education({Key? key}) : super(key: key);

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(top: 20),
      width: screenWidth < 900
          ? screenWidth * 0.9
          : screenWidth < 1600 ? screenWidth * 0.5 : screenWidth * 0.4,
      decoration: BoxDecoration(
          color: const Color(0xfffde2e2), borderRadius: BorderRadius.circular(20)),
      padding: const EdgeInsets.all(30),
      height: 950,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '- Education',
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.w800,
              fontFamily: PFontFamily.sf_ui_display,
            ),
          ),
          const SizedBox(height: 10,),
          Timeline.tileBuilder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            builder: TimelineTileBuilder.fromStyle(
              connectorStyle: ConnectorStyle.dashedLine,
              itemCount: 3,
              contentsAlign: ContentsAlign.alternating,
              contentsBuilder: (context, index) {
                String title = '';
                String subTitle = '';
                String date = '';
                String cgpa = '';

                if (index == 0) {
                  title = 'DIPLOMA IN COMPUTER ENGINEERING';
                  subTitle =
                  'INSTITUTE OF PRINTING TECHNOLOGY & GOVERNMENT POLYTECHNIC COLLEGE, Shoranur, Palakkad, Kerala.';
                  date = '2018-2022';
                  cgpa = 'CGPA : 8.8%';
                } else if (index == 1) {
                  title = 'PLUS TWO (12th Grade) - COMPUTER SCIENCE';
                  subTitle = 'A K N M M A MEMORIAL HIGHER SECONDARY SCHOOL Kattukulam,Palakkad,Kerala.';
                  date = '2016 - 2018';
                  cgpa = 'Percentage : 84%';
                } else if (index == 2) {
                  title = 'SSLC (10th Grade)';
                  subTitle = 'A K N M M A MEMORIAL HIGHER SECONDARY SCHOOL Kattukulam,Palakkad,Kerala.';
                  date = '2015 - 2016';
                  cgpa = 'Percentage : 94%';
                }

                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            color: const Color(0XFFF07857), fontSize: 15, fontWeight: FontWeight.w800,
                            fontFamily: PFontFamily.sf_ui_display,
                          ),
                        ),
                        Text(
                          subTitle,
                          style: TextStyle(
                            color: Colors.black, fontSize: 12, fontWeight: FontWeight.w700,
                            fontFamily: PFontFamily.sf_ui_display,
                          ),
                        ),
                        Text(date, style: TextStyle(
                          color: Colors.black, fontSize: 14, fontWeight: FontWeight.w800,
                          fontFamily: PFontFamily.sf_ui_display,
                        ),),
                        Text(cgpa, style: TextStyle(
                          color: Colors.black, fontSize: 17, fontWeight: FontWeight.w800,
                          fontFamily: PFontFamily.sf_ui_display,
                        ),),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
