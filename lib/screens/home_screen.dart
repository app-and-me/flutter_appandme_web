import 'package:flutter/material.dart';

import '../theme/color.dart';
import '../widgets/activity_widget.dart';

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
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              //padding: const EdgeInsets.all(20.0),
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
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // 외부활동 / 스터디 / 네트워크 - 가로 배치
                    children: [
                      // TODO: 코드에 description이 있으니까 가독성이 좀 떨어지는 느낌?
                      // 방법을 좀 찾아야할듯
                      ActivityWidget(
                        imagePath: 'assets/img/maker_fair1.png',
                        title: '활발한 외부활동',
                        description:
                            '학교에서 배우는 것 보다 더 다양한 경험을 위해 교내/외를\n포함하여 각종 세미나/해커톤/공모전/전시 등에\n참가합니다.다양한 외부활동을 통해 더 넓은 세상을\n바라보는 학생으로 성장할 수 있습니다',
                      ),
                      ActivityWidget(
                        imagePath: 'assets/img/study1.png',
                        title: '개발 및 디자인 스터디',
                        description:
                            '선배와 후배가 함께하는 스터디를 꾸준히 진행하여 부원들의 실력\n향상에 도움이 되고자 합니다. 스터디를 통해 영양가 있는 동아리\n시간을 보내면서 부원들 간의 동기부여가 될 수 있도록 합니다.',
                      ),
                      ActivityWidget(
                        imagePath: 'assets/img/networking1.png',
                        title: '선후배 네트워킹',
                        description:
                            '선후배 간의 격식없이 다같이 친한 동아리로, 모르는 전공\n부분이나 학교 생활 간의 궁금한 점이 있으면 바로 선배들과\n이야기를 통해 조언이나 팁을 얻으며 친목을 다질 수 있고\n분기마다 동아리 회식으로 인해 더더욱 친밀하고 가까운\n사이입니다.',
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // 세번째 컨테이너 (푸터)
            Container(
              padding: const EdgeInsets.all(30),
              color: footerColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/img/logo2.png'),
                          const SizedBox(width: 20),
                          const Text(
                            'App&Me',
                            style: TextStyle(
                              color: primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset('assets/img/instagram.png'),
                          const SizedBox(width: 30),
                          Image.asset('assets/img/github.png'),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 13),
                  const Text('문의전화 : 010-0000-0000'),
                  const SizedBox(height: 13),
                  const Text('이메일 : abcde@fghijk.com'),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(color: Colors.grey),
                      ),
                    ),
                    margin: const EdgeInsets.only(top: 30.0),
                    padding: const EdgeInsets.only(top: 30.0),
                    child: const Center(child: Text('©Team App&Me')),
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
