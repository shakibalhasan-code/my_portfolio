import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_web_app/cons/constant.dart';
import 'package:my_web_app/responsive.dart';
import 'package:my_web_app/utils/colors.dart';
import 'package:my_web_app/utils/images_utils.dart';
import 'package:my_web_app/utils/text_data.dart';
import 'package:my_web_app/widgets/components/experience_widget.dart';
import 'package:my_web_app/widgets/icon_widget.dart';
import 'package:my_web_app/widgets/shapes/light_shape.dart';
import 'package:my_web_app/widgets/components/main_content.dart';
import 'package:my_web_app/widgets/shapes/outline_shape.dart';
import 'package:my_web_app/widgets/components/profile_details.dart';
import 'package:my_web_app/widgets/components/profile_header.dart';
import 'package:my_web_app/widgets/components/projects_widget.dart';
import 'package:my_web_app/widgets/sections/sidemenu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.themeColor,
        appBar: Responsive.isDesktop(context)
            ? null
            : AppBar(
                backgroundColor: AppColors.themeColorLight,
                iconTheme: const IconThemeData(),
                title: Text(
                  'Shakib A Hasan',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
        drawer: Responsive.isDesktop(context) ? null : const Sidemenu(),
        body: Responsive.isDesktop(context)
            ? Center(
                child: Container(
                  constraints: const BoxConstraints(maxWidth: maxWidth),
                  child: Responsive.isMobile(context)
                      ? const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Expanded(child: MainContent()),
                        )
                      : const Row(
                          children: [
                            Expanded(flex: 1, child: Sidemenu()),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(flex: 3, child: MainContent()),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                ),
              )
            : const MainContent());
  }
}
