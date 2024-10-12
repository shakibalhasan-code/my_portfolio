import 'package:flutter/material.dart';
import 'package:my_web_app/utils/text_data.dart';
import 'package:my_web_app/widgets/components/projects_widget.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'PROJECTS',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(height: 5),
        const ProjectsWidget(
          projectName: TextData.p1Name,
          projectDes: TextData.p1Des,
          projectDate: TextData.p1Date,
          projectLink: TextData.p1Link,
          used: TextData.p1_used_skill,
        ),
        const SizedBox(height: 5),
        const ProjectsWidget(
          projectName: TextData.p2Name,
          projectDes: TextData.p2Des,
          projectDate: TextData.p2Date,
          projectLink: TextData.p2Link,
          used: TextData.p2_used_skill,
        ),
        const SizedBox(height: 5),
      ],
    );
    ;
  }
}
