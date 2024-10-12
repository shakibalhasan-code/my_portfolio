import 'package:flutter/material.dart';
import 'package:my_web_app/utils/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class LicenseCertificateItem extends StatelessWidget {
  final String lName;
  final String lCompany;
  final String lDate;
  final String lLink;

  const LicenseCertificateItem(
      {super.key,
      required this.lName,
      required this.lCompany,
      required this.lDate,
      required this.lLink});

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
                  lName,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const Spacer(),
                IconButton(
                    onPressed: () async {
                      if (lLink.isEmpty) {
                        return;
                      }
                      final Uri _url = Uri.parse(lLink);
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
              lCompany,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            Text(
              'Ended:  $lDate',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
