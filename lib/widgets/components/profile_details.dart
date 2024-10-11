import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_web_app/utils/text_data.dart';
import 'package:my_web_app/widgets/sections/contact_section.dart';
import 'package:my_web_app/widgets/sections/frameworks_section.dart';
import 'package:my_web_app/widgets/shapes/light_shape.dart';
import 'package:my_web_app/widgets/shapes/outline_shape.dart';
import 'package:my_web_app/widgets/shapes/white_shape.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Text(
            TextData.aboutMe,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            height: 0.3,
            color: Colors.white,
          ),
          // const SizedBox(
          //   height: 10,
          // ),
          ContactSection(context),
          FrameworkSection(context)
        ],
      ),
    );
  }
}
