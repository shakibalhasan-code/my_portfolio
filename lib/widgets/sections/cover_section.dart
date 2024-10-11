import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_web_app/utils/images_utils.dart';

AspectRatio CoverSection(BuildContext context) {
  return AspectRatio(
    aspectRatio: 16 / 9,
    child: Stack(
      children: [
        // Background image with rounded corners
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            ImagesUtils.cover, // Replace with your image path
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
        ),

        // Center the SizedBox with blur effect
        Center(
          child: SizedBox(
            height: 200,
            width: 400,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white
                        .withOpacity(0.2), // Semi-transparent background
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'It’s an honour to see you here',
                            style: Theme.of(context).textTheme.bodyMedium,
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'First of all, thank you for your interest on me. On this screen, '
                            'you will be able to see my professional information and all the details as in a CV. '
                            'If you have any questions, feel free to mail me.',
                            style: Theme.of(context).textTheme.bodySmall,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
