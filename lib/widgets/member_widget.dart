import 'package:flutter/material.dart';
import 'package:flutter_appandme_web/theme/color.dart';

class MemberWidget extends StatelessWidget {
  final String imageAsset;
  final String name;
  final String instagramAsset;
  final String githubAsset;

  const MemberWidget({
    super.key,
    required this.imageAsset,
    required this.name,
    required this.instagramAsset,
    required this.githubAsset,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset(imageAsset),
          const SizedBox(height: 20),
          Container(
            padding:
                const EdgeInsets.only(left: 20, top: 7, right: 20, bottom: 7),
            decoration: BoxDecoration(
              border: Border.all(color: primaryColor),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Text(name),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Image.asset(instagramAsset),
              const SizedBox(width: 15),
              Image.asset(githubAsset),
            ],
          ),
        ],
      ),
    );
  }
}
