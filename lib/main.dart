import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_web_app/screens/home_screen.dart';
import 'package:my_web_app/screens/splash_screen.dart';
import 'package:my_web_app/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: AppColors.themeColor,
          textTheme: TextTheme(
              bodySmall: GoogleFonts.afacad(
                  textStyle:
                      const TextStyle(fontSize: 15, color: Colors.white)),
              bodyLarge: GoogleFonts.afacad(
                textStyle: const TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              bodyMedium: GoogleFonts.afacad(
                  textStyle: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold))),
          iconTheme: const IconThemeData(color: Colors.white)),
      home: const Scaffold(
        backgroundColor: AppColors.themeColor,
        body: SelectionArea(child: SplashScreen()),
      ),
    );
  }
}
