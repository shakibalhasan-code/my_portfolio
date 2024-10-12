import 'package:flutter/material.dart';
import 'package:my_web_app/utils/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class CourseItem extends StatelessWidget {
  final String cName;
  final String cCompany;
  final String cDuration;
  final String cLink;

  const CourseItem(
      {super.key,
      required this.cName,
      required this.cCompany,
      required this.cDuration,
      required this.cLink});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.themeColorLight,
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  cName,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Spacer(),
                IconButton(
                    onPressed: () async {
                      if (cLink.isEmpty) {
                        return;
                      }
                      final Uri _url = Uri.parse(cLink);
                      launchUrl(_url);
                    },
                    icon: const Icon(
                      Icons.remove_red_eye,
                      color: Colors.white,
                    ))
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              cCompany,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            Text(
              'Duration: $cDuration Months',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
