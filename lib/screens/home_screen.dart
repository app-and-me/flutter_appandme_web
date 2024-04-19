import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
        ),
      ),
    );
  }
}
