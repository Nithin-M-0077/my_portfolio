import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/font_family.dart';
import 'package:timelines/timelines.dart';

class Projects extends StatefulWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
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
      height: 1400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '- Projects',
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
              itemCount: 9,
              contentsAlign: ContentsAlign.alternating,
              contentsBuilder: (context, index) {
                String title = '';
                String subTitle = '';
                String date = '';
                String projecttype = '';

                if (index == 0) {
                  title = 'STELLAR CHAT - Application';
                  subTitle =
                  'Dart / Flutter';
                  date = '2023';
                  projecttype = 'Company Project';
                } else if (index == 1) {
                  title = 'DIZABO - TAXI-RIDER - Application';
                  subTitle =
                  'Dart / Flutter';
                  date = '2023';
                  projecttype = 'Company Project';
                } else if (index == 2) {
                  title = 'DIZABO - REALESTATE - Application';
                  subTitle =
                  'Dart / Flutter';
                  date = '2023';
                  projecttype = 'Company Project';
                }
                else if (index == 3) {
                  title = 'MY PORTFOLIO ';
                  subTitle =
                  'Dart / Flutter';
                  date = '2024';
                  projecttype = 'Individual Project';
                }
                else if (index == 4) {
                  title = 'BLOOD DONORS DATABASE - Application';
                  subTitle =
                  'Dart / Flutter';
                  date = '2022';
                  projecttype = 'Individual Project';
                }
                else if (index == 5) {
                  title = 'TO-DO- Application';
                  subTitle =
                  'Dart / Flutter';
                  date = '2022';
                  projecttype = 'Individual Project';
                }
                else if (index == 6) {
                  title = 'NEWS READING - Application';
                  subTitle =
                  'Dart / Flutter';
                  date = '2023';
                  projecttype = 'Individual Project';
                }
                else if (index == 7) {
                  title = 'STUDENT STUDY PORTAL - Website';
                  subTitle =
                  'Python / Django';
                  date = '2022';
                  projecttype = 'Individual Project';
                }
                else if (index == 8) {
                  title = 'DOCTOR BOOKING  PORTAL - Website';
                  subTitle =
                  'Python / Django';
                  date = '2022';
                  projecttype = 'Company Project';
                }
                else if (index == 9) {
                  title = 'ATM PIN SECURITY PROJECT';
                  subTitle =
                  'java / Php';
                  date = '2021';
                  projecttype = 'College Project';
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
                        Text(projecttype, style: TextStyle(
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
