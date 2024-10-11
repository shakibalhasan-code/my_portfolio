import 'package:flutter/material.dart';
import 'package:my_web_app/utils/text_data.dart';
import 'package:my_web_app/widgets/components/experience_widget.dart';

class ExperenceSection extends StatelessWidget {
  const ExperenceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'EXPERIENCE',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(height: 5),
        const ExperienceWidget(
            jobRole: TextData.ex1Role,
            jobCompany: TextData.ex1Company,
            jobDes: TextData.ex1Des,
            jobTime: TextData.ex1Date),
        const SizedBox(
          height: 5,
        ),
        const ExperienceWidget(
            jobRole: TextData.ex2Role,
            jobCompany: TextData.ex2Company,
            jobDes: TextData.ex2Des,
            jobTime: TextData.ex2Date),
        const SizedBox(
          height: 5,
        ),
        const ExperienceWidget(
            jobRole: TextData.ex3Role,
            jobCompany: TextData.ex3Company,
            jobDes: TextData.ex3Des,
            jobTime: TextData.ex3Date),
      ],
    );
  }
}
