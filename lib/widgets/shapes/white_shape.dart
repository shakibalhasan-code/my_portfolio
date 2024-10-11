import 'package:flutter/material.dart';

class WhiteShape extends StatelessWidget {
  final Widget child;
  const WhiteShape({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: child,
      ),
    );
  }
}
