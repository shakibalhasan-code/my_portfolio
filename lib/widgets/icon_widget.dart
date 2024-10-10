import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_web_app/utils/colors.dart';

class CustomIcon extends StatelessWidget {
  final String iconPath;
  final String link;
  const CustomIcon({super.key, required this.iconPath, required this.link});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        // decoration: BoxDecoration(
        //     color: Colors.white, borderRadius: BorderRadius.circular(20)),
        height: 22,
        width: 22,
        child: SvgPicture.asset(
          iconPath,
          color: Colors.white,
        ),
      ),
    );
  }
}
