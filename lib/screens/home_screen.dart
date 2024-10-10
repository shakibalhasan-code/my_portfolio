import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_web_app/utils/colors.dart';
import 'package:my_web_app/utils/images_utils.dart';
import 'package:my_web_app/utils/text_data.dart';
import 'package:my_web_app/widgets/experience_widget.dart';
import 'package:my_web_app/widgets/icon_widget.dart';
import 'package:my_web_app/widgets/light_shape.dart';
import 'package:my_web_app/widgets/outline_shape.dart';
import 'package:my_web_app/widgets/projects_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Row(
      children: [
        about_me_sidebar(),
        Expanded(
            flex: 3,
            child: SingleChildScrollView(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  experience_section(),
                  const SizedBox(height: 10),
                  projects_section(context),
                ],
              ),
            )))
      ],
    ));
  }

  Column experience_section() {
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

  Column projects_section(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'PROJECTS',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(height: 5),
        const ProjectsWidget(
            projectName: TextData.p1Name,
            projectDes: TextData.p1Des,
            projectDate: TextData.p1Date,
            projectLink: TextData.p1Link),
        const SizedBox(height: 5),
        const ProjectsWidget(
            projectName: TextData.p2Name,
            projectDes: TextData.p2Des,
            projectDate: TextData.p2Date,
            projectLink: TextData.p2Link),
        const SizedBox(height: 5),
      ],
    );
  }
}

class about_me_sidebar extends StatelessWidget {
  const about_me_sidebar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      height: double.infinity,
      color: AppColors.themeColorLight,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //profilePic
              SizedBox(
                height: 200,
                width: 200,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(ImagesUtils.myPic),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Shakib A Hasan',
                style: GoogleFonts.afacad(
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
              ),
              Text(
                'Software Developer | Entrepreneur',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Text(
                '+8801857895107',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomIcon(iconPath: ImagesUtils.linkedin, link: ''),
                  CustomIcon(iconPath: ImagesUtils.github, link: ''),
                  CustomIcon(iconPath: ImagesUtils.x, link: ''),
                  CustomIcon(iconPath: ImagesUtils.fb, link: ''),
                  CustomIcon(iconPath: ImagesUtils.email, link: ''),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                height: 0.3,
                color: Colors.white,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                TextData.aboutMe,
                style: GoogleFonts.afacad(
                    textStyle: Theme.of(context).textTheme.bodySmall),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                height: 0.3,
                color: Colors.white,
              ),
              const SizedBox(
                height: 10,
              ),
              LightShape(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Frameworks',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: OutlineShape(
                        child: Text('FLUTTER',
                            style: Theme.of(context).textTheme.bodySmall),
                      )),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                          child: OutlineShape(
                        child: Text('ANDROID',
                            style: Theme.of(context).textTheme.bodySmall),
                      )),
                    ],
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    ));
  }
}
