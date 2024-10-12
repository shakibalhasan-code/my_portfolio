import 'package:flutter/material.dart';
import 'package:my_web_app/items/license_certificate_item.dart';
import 'package:my_web_app/utils/text_data.dart';
import 'package:my_web_app/widgets/components/experience_widget.dart';

class LicenseAndCertificateSection extends StatelessWidget {
  const LicenseAndCertificateSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'LICENSE & CERTIFICATE',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(height: 5),
        const Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: LicenseCertificateItem(
                  lName: 'Complete Flutter App Development',
                  lCompany: 'Interective Cares',
                  lDate: 'Sep 2024',
                  lLink: ''),
            ),
            SizedBox(width: 5),
            Expanded(
              child: LicenseCertificateItem(
                  lName: 'QuickStart with Flutter',
                  lCompany: 'Ostad',
                  lDate: 'Feb 2024',
                  lLink: ''),
            ),
          ],
        ),
        const SizedBox(height: 5),
        const LicenseCertificateItem(
            lName:
                'Ethical Hacking - Mobile Platforms and Network Architecture',
            lCompany: 'Great Learning',
            lDate: 'Dec 2023',
            lLink: ''),
      ],
    );
  }
}
