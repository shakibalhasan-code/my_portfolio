import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_web_app/utils/colors.dart';

class ProjectsWidget extends StatelessWidget {
  final String projectName;
  final String projectDes;
  final String projectDate;
  final String projectLink;
  final List<String>? used;
  const ProjectsWidget(
      {super.key,
      required this.projectName,
      required this.projectDes,
      required this.projectDate,
      required this.projectLink,
      this.used});

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
            Text(
              projectName,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(
              height: 3,
            ),
            Text(projectDes, style: Theme.of(context).textTheme.bodySmall),
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
                Text(projectDate, style: Theme.of(context).textTheme.bodySmall),
              ],
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 30,
              child: SkillBoxWidget(),
            )
          ],
        ),
      ),
    );
  }

  ListView SkillBoxWidget() {
    return ListView.builder(
        itemCount: used!.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final singleUsed = used![index];
          return Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.green.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Center(
                  child: Text(
                    singleUsed,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
