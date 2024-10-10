import 'package:flutter/material.dart';
import 'package:my_web_app/utils/colors.dart';

class LightShape extends StatelessWidget {
  final Widget child;
  const LightShape({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.themeColorLight,
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: EdgeInsets.all(15),
        child: child,
      ),
    );
  }
}
