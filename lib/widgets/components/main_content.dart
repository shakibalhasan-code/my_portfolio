import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_web_app/utils/images_utils.dart';
import 'package:my_web_app/widgets/sections/cover_section.dart';
import 'package:my_web_app/widgets/sections/experence_section.dart';
import 'package:my_web_app/widgets/sections/project_section.dart';

class MainContent extends StatelessWidget {
  const MainContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            CoverSection(context),
            const SizedBox(
              height: 10,
            ),
            const ExperenceSection(),
            const ProjectSection()
          ],
        ),
      ),
    );
  }
}
