import 'package:flutter/material.dart';
import 'package:my_web_app/widgets/shapes/outline_shape.dart';

Column ContactSection(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Basics',
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      Row(
        children: [
          Expanded(
            child: Text(
              'Location',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
          const Spacer(),
          Expanded(
            child: Text(
              'Dhaka, Bangladesh (Asia)',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          )
        ],
      ),
      Row(
        children: [
          Expanded(
            child: Text(
              'DOB',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
          const Spacer(),
          Expanded(
            child: Text(
              '02-01-2004',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          )
        ],
      )
    ],
  );
}
