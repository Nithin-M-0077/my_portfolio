import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/font_family.dart';
import 'package:timelines/timelines.dart';

class Experiences extends StatefulWidget {
  const Experiences({Key? key}) : super(key: key);

  @override
  State<Experiences> createState() => _ExperiencesState();
}

class _ExperiencesState extends State<Experiences> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(top: 20),
      width: screenWidth < 900
          ? screenWidth * 0.9
          : screenWidth < 1600 ? screenWidth * 0.5 : screenWidth * 0.4,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      padding: const EdgeInsets.all(30),
      height: 800,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '- Experiences',
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
              itemCount: 3,
              contentsAlign: ContentsAlign.alternating,
              contentsBuilder: (context, index) {
                String title = '';
                String subTitle = '';
                String date = '';
                String desc = '';

                if (index == 0) {
                  title = '@ Mugage Automation';
                  subTitle = 'Flutter Ui Developer - FREELANCE';
                  date = 'Aug 2023 - Jan 2024';
                  desc = 'Responsive UI Development.';
                } else if (index == 1) {
                  title = '@ Aeth Analytica';
                  subTitle ='Junior Flutter Developer';
                  date = 'May 2023 - Aug 2023';
                  desc = 'Hands-on experience in designing and developing mobile applications UI using Flutter.';
                } else if (index == 2) {
                  title = '@ Avodha';
                  subTitle =
                  'Flutter Development - INTERNSHIP';
                  date = 'Aug 2022 - Feb 2023';
                  desc = '•I possess a strong understanding of object-oriented programming concepts, along with the ability to create clean, efficient, and thoroughly documented code.';
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
                            color: Colors.black, fontSize: 14, fontWeight: FontWeight.w700,
                            fontFamily: PFontFamily.sf_ui_display,
                          ),
                        ),
                        Text(date, style: TextStyle(
                          color: Colors.black, fontSize: 12, fontWeight: FontWeight.w800,
                          fontFamily: PFontFamily.sf_ui_display,
                        ),),
                        Text(desc, style: TextStyle(
                          color: Colors.black, fontSize: 12, fontWeight: FontWeight.w800,
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
