import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_web_app/utils/constant.dart';
import 'package:my_web_app/utils/images_utils.dart';
import 'package:my_web_app/widgets/icon_widget.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          width: 200,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(ImagesUtils.myPic),
          ),
        ),
        const SizedBox(height: 8),
        Text('Shakib A Hasan', style: Theme.of(context).textTheme.bodyMedium),
        Text(
          'Software Developer | Entrepreneur',
          style: Theme.of(context).textTheme.bodySmall,
        ),
        Text(
          '+8801857895107',
          style: Theme.of(context).textTheme.bodySmall,
        ),
        const SizedBox(
          height: 10,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomIcon(iconPath: ImagesUtils.linkedin, link: linkedin),
            CustomIcon(iconPath: ImagesUtils.github, link: github),
            CustomIcon(iconPath: ImagesUtils.x, link: x),
            CustomIcon(iconPath: ImagesUtils.fb, link: facebook),
            CustomIcon(iconPath: ImagesUtils.email, link: mail),
          ],
        ),
      ],
    );
  }
}
