import 'package:flutter/material.dart';
import 'package:my_web_app/utils/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class ExperienceWidget extends StatelessWidget {
  final String jobRole;
  final String jobCompany;
  final String jobDes;
  final String jobTime;
  final String? jobLink;

  const ExperienceWidget(
      {super.key,
      required this.jobRole,
      required this.jobCompany,
      required this.jobDes,
      required this.jobTime,
      this.jobLink});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.themeColorLight,
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  jobRole,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Spacer(),
                IconButton(
                    onPressed: () async {
                      if (jobLink!.isEmpty) {
                        return;
                      }
                      final Uri _url = Uri.parse(jobLink!);
                      launchUrl(_url);
                    },
                    icon: const Icon(
                      Icons.remove_red_eye,
                      color: Colors.white,
                    ))
              ],
            ),
            Text(
              jobCompany,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const Divider(
              height: 0.2,
              color: Colors.white,
            ),
            const SizedBox(
              height: 3,
            ),
            Text(jobDes, style: Theme.of(context).textTheme.bodySmall),
            const SizedBox(
              height: 3,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(Icons.timelapse, size: 18, color: Colors.white),
                const SizedBox(
                  width: 5,
                ),
                Text(jobTime, style: Theme.of(context).textTheme.bodySmall),
              ],
            )
          ],
        ),
      ),
    );
  }
}
