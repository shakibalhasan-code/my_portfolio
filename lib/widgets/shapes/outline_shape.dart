import 'package:flutter/material.dart';
import 'package:my_web_app/utils/colors.dart';

class OutlineShape extends StatelessWidget {
  final Widget child;
  const OutlineShape({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: AppColors.themeColor
          // border: Border.all(width: 1.5, color: AppColors.themeColor)
          ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Center(child: child),
      ),
    );
  }
}
