import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_web_app/screens/home_screen.dart';
import 'package:my_web_app/utils/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const HomeScreen()));
    });
    return Scaffold(
      backgroundColor: AppColors.themeColorLight,
      body: Center(
        child: SizedBox(
          width: 250.0,
          child: DefaultTextStyle(
            style: const TextStyle(
              fontSize: 70.0,
              fontFamily: 'Canterbury',
            ),
            child: AnimatedTextKit(
              animatedTexts: [
                ScaleAnimatedText('eat-code-sleep-repeat',
                    textAlign: TextAlign.center,
                    textStyle: Theme.of(context).textTheme.bodyMedium),
              ],
              onTap: () {
                print("Tap Event");
              },
            ),
          ),
        ),
      ),
    );
  }
}
