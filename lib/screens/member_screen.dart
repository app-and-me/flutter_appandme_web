import 'package:flutter/material.dart';
import 'package:flutter_appandme_web/theme/color.dart';
import 'package:flutter_appandme_web/widgets/footer_widget.dart';

import '../widgets/header_widget.dart';

class MemeberScreen extends StatelessWidget {
  const MemeberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // header
            // header
            const Padding(
              padding: EdgeInsets.only(left: 100, right: 100, top: 30),
              child: HeaderWidget(),
            ),
            const Padding(
              padding:
                  EdgeInsets.only(left: 100, top: 30, right: 100, bottom: 30),
              // 동아리원 기수 선택
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
            ),
            // 동아리원 학과 선택
            Padding(
              padding: const EdgeInsets.only(left: 100, right: 100, bottom: 30),
              child: Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey),
                  ),
                ),
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
            ),
            // 부원
            Padding(
              padding: const EdgeInsets.only(left: 100, right: 100, bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Image.asset('assets/img/sunhee.png'),
                        const SizedBox(height: 20),
                        Container(
                          padding: const EdgeInsets.only(
                              left: 20, top: 7, right: 20, bottom: 7),
                          decoration: BoxDecoration(
                            border: Border.all(color: primaryColor),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Text('김선희'),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            Image.asset('assets/img/instagram.png'),
                            const SizedBox(width: 15),
                            Image.asset('assets/img/github.png'),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Image.asset('assets/img/hyunji.png'),
                        const SizedBox(height: 20),
                        Container(
                          padding: const EdgeInsets.only(
                              left: 20, top: 7, right: 20, bottom: 7),
                          decoration: BoxDecoration(
                            border: Border.all(color: primaryColor),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Text('김현지'),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            Image.asset('assets/img/instagram.png'),
                            const SizedBox(width: 15),
                            Image.asset('assets/img/github.png'),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Image.asset('assets/img/seyeon.png'),
                        const SizedBox(height: 20),
                        Container(
                          padding: const EdgeInsets.only(
                              left: 20, top: 7, right: 20, bottom: 7),
                          decoration: BoxDecoration(
                            border: Border.all(color: primaryColor),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Text('박세연'),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            Image.asset('assets/img/instagram.png'),
                            const SizedBox(width: 15),
                            Image.asset('assets/img/github.png'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const FooterWidget(),
          ],
        ),
      ),
    );
  }
}
