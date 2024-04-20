import 'package:flutter/material.dart';
import 'package:flutter_appandme_web/theme/color.dart';
import 'package:flutter_appandme_web/widgets/footer_widget.dart';

import '../widgets/header_widget.dart';
import '../widgets/member_widget.dart';

class MemberScreen extends StatelessWidget {
  const MemberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildHeader(),
            buildClubSelection(),
            buildMemberSection(),
            const FooterWidget(),
          ],
        ),
      ),
    );
  }

  Widget buildHeader() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 30),
      child: HeaderWidget(),
    );
  }

  Widget buildClubSelection() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            '11기',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          SizedBox(width: 35),
          Text(
            '12기',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: secondaryColor,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildMemberSection() {
    return const Padding(
      padding: EdgeInsets.all(100),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MemberWidget(
            imageAsset: 'assets/img/sunhee.png',
            name: '김선희',
            instagramAsset: 'assets/img/instagram.png',
            githubAsset: 'assets/img/github.png',
          ),
          MemberWidget(
            imageAsset: 'assets/img/hyunji.png',
            name: '김현지',
            instagramAsset: 'assets/img/instagram.png',
            githubAsset: 'assets/img/github.png',
          ),
          MemberWidget(
            imageAsset: 'assets/img/seyeon.png',
            name: '박세연',
            instagramAsset: 'assets/img/instagram.png',
            githubAsset: 'assets/img/github.png',
          ),
        ],
      ),
    );
  }
}
