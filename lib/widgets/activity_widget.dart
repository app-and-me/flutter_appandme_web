import 'package:flutter/material.dart';

import '../theme/color.dart';

class ActivityWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;

  const ActivityWidget({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(imagePath),
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        Text(
          description,
          style: const TextStyle(
            color: secondaryColor,
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
