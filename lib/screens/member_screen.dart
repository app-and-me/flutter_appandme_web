import 'package:flutter/material.dart';
import 'package:flutter_appandme_web/theme/color.dart';

import '../widgets/header_widget.dart';

class MemeberScreen extends StatelessWidget {
  const MemeberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(left: 70, top: 30, right: 70, bottom: 30),
        child: Column(
          children: [
            // header
            const HeaderWidget(),
            const Padding(
              padding: EdgeInsets.only(top: 70, bottom: 70),
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
            Container(
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
          ],
        ),
      ),
    );
  }
}
