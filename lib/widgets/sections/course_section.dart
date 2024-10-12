import 'package:flutter/material.dart';
import 'package:my_web_app/items/course_item.dart';
import 'package:my_web_app/items/license_certificate_item.dart';
import 'package:my_web_app/utils/text_data.dart';
import 'package:my_web_app/widgets/components/experience_widget.dart';

class CourseSection extends StatelessWidget {
  const CourseSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'COURSES',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(height: 5),
        const Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: CourseItem(
                  cName: 'Complete Flutter App Development',
                  cCompany: 'Interective Cares',
                  cDuration: '8',
                  cLink: ''),
            ),
            SizedBox(width: 5),
            Expanded(
              child: CourseItem(
                  cName: 'QuickStart with Flutter',
                  cCompany: 'Ostad',
                  cDuration: '3',
                  cLink: ''),
            ),
          ],
        ),
        const SizedBox(height: 5),
        const CourseItem(
            cName:
                'Ethical Hacking - Mobile Platforms and Network Architecture',
            cCompany: 'Great Learning',
            cDuration: '1',
            cLink: ''),
      ],
    );
  }
}
