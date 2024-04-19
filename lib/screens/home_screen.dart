import 'package:flutter/material.dart';

import '../theme/color.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(
          icon: Icon(Icons.menu),
          onPressed: null,
        ),
        actions: [Image.asset('assets/img/logo.png')], // TODO: 이미지 깨짐 / 스타일 조정
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 첫번째 컨테이너 (앱앤미 소개)
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: const Column(
                        children: [
                          Text(
                            'From User To Maker',
                            style: TextStyle(
                              fontSize: 70,
                              fontWeight: FontWeight.bold,
                              color: primaryColor,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 20),
                          Text(
                            '앱앤미는 차세대 개발 흐름에 따른 기술들을 익히고 연구하며 실제로 서비스를 구현해서\n'
                            '학교 및 사회에 기여하는 전공 동아리입니다.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              color: secondaryColor,
                            ),
                          ),
                          SizedBox(height: 20),
                          IconButton(
                            onPressed: null,
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              size: 70,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // 두번째 컨테이너 (주요활동)
            Container(
              child: Center(
                  child: Row(
                // 외부활동 / 스터디 / 네트워크 - 가로 배치
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/img/maker_fair1.png'),
                      const Text(
                        '활발한 외부활동',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      const Text(
                        '학교에서 배우는 것 보다 더 다양한 경험을 위해 교내/외를\n포함하여 각종 세미나/해커톤/공모전/전시 등에\n참가합니다.다양한 외부활동을 통해 더 넓은 세상을\n바라보는 학생으로 성장할 수 있습니다',
                        style: TextStyle(
                          color: secondaryColor,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  const Column(children: []),
                  const Column(children: []),
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}
