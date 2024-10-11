import 'package:flutter/material.dart';
import 'package:my_web_app/utils/colors.dart';
import 'package:my_web_app/widgets/components/profile_details.dart';
import 'package:my_web_app/widgets/components/profile_header.dart';

class Sidemenu extends StatelessWidget {
  const Sidemenu({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      backgroundColor: AppColors.themeColorLight,
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            ProfileHeader(),
            SizedBox(height: 10),
            Expanded(
                child: SingleChildScrollView(
              child: ProfileDetails(),
            )),
          ],
        ),
      ),
    );
  }
}
