import 'package:flutter/material.dart';
import 'package:my_web_app/widgets/shapes/outline_shape.dart';

Column FrameworkSection(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Frameworks',
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: OutlineShape(
            child:
                Text('FLUTTER', style: Theme.of(context).textTheme.bodySmall),
          )),
          const SizedBox(
            width: 5,
          ),
          Expanded(
              child: OutlineShape(
            child:
                Text('ANDROID', style: Theme.of(context).textTheme.bodySmall),
          )),
        ],
      ),
    ],
  );
}
