import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_appandme_web/theme/color.dart';
import 'package:flutter_appandme_web/widgets/footer_widget.dart';

import '../widgets/header_widget.dart';
import '../widgets/member_widget.dart';

class MemberScreen extends StatefulWidget {
  const MemberScreen({super.key});

  @override
  State<MemberScreen> createState() => _MemberScreenState();
}

class _MemberScreenState extends State<MemberScreen> {
  Map<String, dynamic> memberData = {}; //멤버 데이터
  String selectedGraduation = ''; //선택된 기수

  @override
  void initState() {
    super.initState();
    loadMemberData();
  }

  Future<void> loadMemberData() async {
    String jsonString =
        await rootBundle.loadString('assets/json/data.json'); //json 데이터에 접근
    setState(() {
      memberData = json.decode(jsonString);
      selectedGraduation = memberData.keys.first;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildHeader(),
            buildGraduationSelection(),
            buildDepartmentSelection(),
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

  Widget buildGraduationSelection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          for (var graduation in memberData.keys) ...[
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedGraduation = graduation;
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 35),
                child: Text(
                  graduation,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: graduation == selectedGraduation
                        ? Colors.black
                        : secondaryColor,
                  ),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget buildDepartmentSelection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 30),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(bottom: 10),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: primaryColor),
                  ),
                ),
                child: const Text(
                  '뉴미디어소프트웨어과',
                  style: TextStyle(color: primaryColor),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(bottom: 10),
                child: const Text(
                  '뉴미디어웹솔루션과',
                  style: TextStyle(color: secondaryColor),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(bottom: 10),
                child: const Text(
                  '뉴미디어디자인과',
                  style: TextStyle(color: secondaryColor),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
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
