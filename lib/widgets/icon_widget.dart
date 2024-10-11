import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_web_app/utils/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomIcon extends StatelessWidget {
  final String iconPath;
  final String link;
  const CustomIcon({super.key, required this.iconPath, required this.link});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) {
              return Container(
                color: AppColors.themeColorLight,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'You\'re going out from this page, Are you ?',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                'No',
                                style: Theme.of(context).textTheme.bodyMedium,
                              )),
                          TextButton(
                              onPressed: () {
                                if (link.isEmpty) {
                                  return;
                                } else {
                                  final Uri _url = Uri.parse(link);
                                  launchUrl(_url);
                                }
                              },
                              child: Text(
                                'Yes, let me go',
                                style: Theme.of(context).textTheme.bodyMedium,
                              )),
                        ],
                      )
                    ],
                  ),
                ),
              );
            });
      },
      child: Container(
        // decoration: BoxDecoration(
        //     color: Colors.white, borderRadius: BorderRadius.circular(20)),
        height: 22,
        width: 22,
        child: SvgPicture.asset(
          iconPath,
          color: Colors.white,
        ),
      ),
    );
  }

  // Future<void> _launchUrl(String url) async {
  //   final Uri _url = Uri.parse(link);
  //   if (!await ) {
  //     throw Exception('Could not launch $_url');
  //   }
  // }
}
