import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/utils/font_family.dart';

class AnimatedContact extends StatefulWidget {
  final IconData iconData;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const AnimatedContact({
    Key? key,
    required this.iconData,
    required this.title,
    required this.subtitle,
    required this.onTap,
  }) : super(key: key);

  @override
  State<AnimatedContact> createState() => _AnimatedContactState();
}

class _AnimatedContactState extends State<AnimatedContact> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      onHover: (val) {
        setState(() {
          isHovering = val;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        decoration: BoxDecoration(
          color: isHovering ? const Color(0xffcbd6e2) : Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: isHovering ? Colors.black : Colors.white),
        ),
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.only(top: 10),
        child: Row(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: FaIcon(
                  widget.iconData,
                  size: 18,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(
                      overflow: TextOverflow.fade,
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                      fontFamily: PFontFamily.sf_ui_display,
                    ),
                  ),
                  const SizedBox(height: 5,),
                  Text(widget.subtitle, style: const TextStyle(overflow: TextOverflow.fade, fontSize: 12, fontWeight: FontWeight.w900,
                  ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
